/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.entity;

import java.sql.Date;
import java.time.LocalDate;
import java.util.UUID;

/**
 *
 * @author thanl
 */
public class Order {
    String orderID, userID;
    Date OrderDate;
    Float totalMoney;

    public Order() {
        
    }

    public Order(String orderID, String userID, Date OrderDate, Float totalMoney) {
        this.orderID = orderID;
        this.userID = userID;
        this.OrderDate = OrderDate;
        this.totalMoney = totalMoney;
    }

    public Order(String userID, Float totalMoney) {
        this.orderID = UUID.randomUUID().toString();
        this.OrderDate = Date.valueOf(LocalDate.now());
        this.userID = userID;
        this.totalMoney = totalMoney;
    }
    
    

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public Date getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(Date OrderDate) {
        this.OrderDate = OrderDate;
    }

    public Float getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(Float totalMoney) {
        this.totalMoney = totalMoney;
    }

    @Override
    public String toString() {
        return "Order{" + "orderID=" + orderID + ", userID=" + userID + ", OrderDate=" + OrderDate + ", totalMoney=" + totalMoney + '}';
    }
    
    
}
