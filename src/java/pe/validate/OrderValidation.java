/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.validate;

import pe.dao.ProductDAO;
import pe.entity.OrderDetail;
import pe.entity.Product;
/**
 *
 * @author AnataArisa
 */
public class OrderValidation {
    private static final ProductDAO productDAO = new ProductDAO();
    public static boolean canOrderProduct(OrderDetail product){
        Product temp = productDAO.get(product.getProductId());
        if(temp != null){
            if(temp.getCount() - product.getQuantity() >= 0){
                return true;
            }
        }
        return false;
    }

}
