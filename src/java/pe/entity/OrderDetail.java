/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.entity;

/**
 *
 * @author thanl
 */
public class OrderDetail {
    private String orderDetailID, orderID, productId;
    private int quantity;

    public OrderDetail() {
    }

    public OrderDetail(String orderDetailID, String orderID, String productId, int quantity) {
        this.orderDetailID = orderDetailID;
        this.orderID = orderID;
        this.productId = productId;
        this.quantity = quantity;
    }

    public String getOrderDetailID() {
        return orderDetailID;
    }

    public void setOrderDetailID(String orderDetailID) {
        this.orderDetailID = orderDetailID;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    

    @Override
    public String toString() {
        return "OrderDetail{" + "orderDetailID=" + orderDetailID + ", orderID=" + orderID + ", productId=" + productId + '}';
    }
    
    
    
}
