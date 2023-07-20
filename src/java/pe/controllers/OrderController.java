/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package pe.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.entity.Cart;
import pe.entity.Item;
import pe.entity.Order;
import pe.entity.OrderDetail;
import pe.entity.User;
import pe.dao.*;
import pe.entity.Product;
import pe.validate.OrderValidation;

/**
 *
 * @author AnataArisa
 */
@WebServlet(name = "OrderController", urlPatterns = {"/order"})
public class OrderController extends HttpServlet {

    private static OrderDAO orderDAO = new OrderDAO();
    private static OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
    private static ProductDAO productDAO = new ProductDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String message = "";
        HttpSession session = request.getSession();
        Cart orderCard = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("USER");
        if (user != null) {
            if (orderCard != null) {
                List<OrderDetail> orderDList = new ArrayList<>();
                List<Item> itemList = orderCard.getItems();
                Order order = new Order(user.userID, orderCard.getTotal());
                for (Item i : itemList) {
                    OrderDetail od = new OrderDetail(order.getOrderID(), i.getProduct().getId(), i.getQuantity());
                    if (OrderValidation.canOrderProduct(od)) {
                        orderDList.add(od);
                        Product p = productDAO.get(od.getProductId());
                        if(p != null){
                            p.setCount(p.getCount() - od.getQuantity());
                            productDAO.update(p);
                        }
                    } else {
                        message = "The product with ID: " + i.getProduct().getName() + " is out of stock";
                        break;
                    }
                }
                if (message.isEmpty()) {
                    orderDAO.create(order);
                    for (OrderDetail o : orderDList) {
                        orderDetailDAO.create(o);
                    }
                }
            }
        }
        request.setAttribute("message", message);
        request.getRequestDispatcher("CartController").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
