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
import pe.entity.Order;
import java.util.List;
import pe.utils.DBUtils;

/**
 *
 * @author AnataArisa
 */
public class OrderDAO {
    public List<Order> getAll(){
        List<Order> orderList = new ArrayList<>();
        String query = "select * from Order";
        Connection conn = null;
        Statement sm = null;
        ResultSet re = null;
        Order order = null;
        try{
            conn = DBUtils.getConnection();
            sm = conn.createStatement();
            re = sm.executeQuery(query);
            while(re.next()){
                order = new Order(
                        re.getString("orderID"),
                        re.getString("userID"),
                        re.getDate("orderDate"),
                        re.getFloat("totalMoney")
                );
                orderList.add(order);
            }
        }catch(SQLException | ClassNotFoundException e){
            
        }
        return orderList;
    }
    
    public Order get(Order data){
        String sql = "SELECT * FROM Order WHERE orderID=?";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet re = null;
        try {
            conn = new pe.utils.DBUtils().getConnection();
            pre = conn.prepareStatement(sql);
            pre.setString(1, data.getOrderID());
            re = pre.executeQuery();
            while (re.next()) {
                return new Order(re.getString(1), re.getString(2), re.getDate(3), re.getFloat(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Order create(Order data){
        String sql = "insert into Order values(?,?,?,?)";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet re = null;
        try {
            conn = new pe.utils.DBUtils().getConnection();
            pre = conn.prepareStatement(sql);
            pre.setString(1, data.getOrderID());
            pre.setString(2, data.getUserID());
            pre.setDate(3, data.getOrderDate());
            pre.setFloat(4, data.getTotalMoney());
            if(pre.execute()){
                return data;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
