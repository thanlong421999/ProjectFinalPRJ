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
    String orderDetailID, orderID, productId;

    public OrderDetail() {
    }

    public OrderDetail(String orderDetailID, String orderID, String productId) {
        this.orderDetailID = orderDetailID;
        this.orderID = orderID;
        this.productId = productId;
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

    @Override
    public String toString() {
        return "OrderDetail{" + "orderDetailID=" + orderDetailID + ", orderID=" + orderID + ", productId=" + productId + '}';
    }
    
    
    
}
