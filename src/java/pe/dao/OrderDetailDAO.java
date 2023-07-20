/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import pe.entity.OrderDetail;
import pe.utils.DBUtils;

/**
 *
 * @author AnataArisa
 */
public class OrderDetailDAO {
    public List<OrderDetail> getAll(){
        List<OrderDetail> orderList = new ArrayList<>();
        String query = "select * from OrderDetail";
        Connection conn = null;
        Statement sm = null;
        ResultSet re = null;
        OrderDetail order = null;
        try{
            conn = DBUtils.getConnection();
            sm = conn.createStatement();
            re = sm.executeQuery(query);
            while(re.next()){
                order = new OrderDetail(
                        re.getString("orderDetailID"),
                        re.getString("orderID"),
                        re.getString("productId"),
                        re.getInt("quantity")
                );
                orderList.add(order);
            }
        }catch(SQLException | ClassNotFoundException e){
            
        }
        return orderList;
    }
    
    public OrderDetail get(OrderDetail data){
        String sql = "SELECT * FROM OrderDetail WHERE orderDetailID=?";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet re = null;
        try {
            conn = new pe.utils.DBUtils().getConnection();
            pre = conn.prepareStatement(sql);
            pre.setString(1, data.getOrderID());
            re = pre.executeQuery();
            while (re.next()) {
                return new OrderDetail(re.getString(1), re.getString(2), re.getString(3), re.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public OrderDetail create(OrderDetail data){
        String sql = "insert into Order values(?,?,?,?)";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet re = null;
        try {
            conn = new pe.utils.DBUtils().getConnection();
            pre = conn.prepareStatement(sql);
            pre.setString(1, data.getOrderDetailID());
            pre.setString(2, data.getOrderID());
            pre.setString(3, data.getProductId());
            pre.setFloat(4, data.getQuantity());
            if(pre.execute()){
                return data;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
