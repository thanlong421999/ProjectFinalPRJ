package pe.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hd
 */
public class MainController extends HttpServlet {

    private static final String LOGIN_PAGE = "login.jsp";
    private static final String ERROR = "error.jsp";
    private static final String LOGIN = "Login";
    private static final String LOGIN_CONTROLLER = "LoginController";
    
    private static final String DELETE = "Delete";
    private static final String DELETE_CONTROLLER = "DeleteController";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    
    private static final String LIST = "List";
    private static final String LIST_CONTROLLER = "ListController";
    private static final String ADD = "Add";
    private static final String ADD_CONTROLLER = "AddController";
    private static final String UPDATE = "Update";
    private static final String UPDATE_CONTROLLER = "UpdateController";
    private static final String CART = "Cart";            
    private static final String CART_CONTROLLER = "CartController";
    private static final String REMOVE = "Remove";
    private static final String REMOVE_CONTROLLER = "RemoveController";
    private static final String SEARCH = "Search";
    private static final String SEARCH_CONTROLLER = "SearchController";
    private static final String PROCESS = "Process";
    private static final String PROCESS_CONTROLLER = "ProcessController";
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = LOGIN_PAGE;
        try {
            String action = request.getParameter("action");
            if (action == null) {
                url = LOGIN_PAGE;
            }else if(LOGIN.equals(action)){
                url = LOGIN_CONTROLLER;
            }else if(REMOVE.equals(action)){
                url =REMOVE_CONTROLLER;
            }else if(DELETE.equals(action)){
                url = DELETE_CONTROLLER;
            }else if(LOGOUT.equals(action)){
                url = LOGOUT_CONTROLLER;
            }else if(LIST.equals(action)){
                url = LIST_CONTROLLER;
            }else if(UPDATE.equals(action)){
                url = UPDATE_CONTROLLER;
            }else if(ADD.equals(action)){
                url = ADD_CONTROLLER;
            }else if(SEARCH.equals(action)){
                url = SEARCH_CONTROLLER;
            }else if(CART.equals(action)){
                url = CART_CONTROLLER;
            }else if(PROCESS.equals(action)){
                url = PROCESS_CONTROLLER;
            
            }
//            your code here
        } catch (Exception e) {
            log("Error at MainController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
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
