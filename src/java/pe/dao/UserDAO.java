/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import pe.entity.User;
import pe.utils.DBUtils;

/**
 *
 * @author Henry
 */
public class UserDAO {
    Connection conn = null;
    PreparedStatement pre = null;
    ResultSet rs = null;
    
    public User login(String userID, String password) throws ClassNotFoundException, SQLException{
        String query = "SELECT * FROM Users WHERE userID = ? AND password = ?";
        try{
            conn = new DBUtils().getConnection();
            pre = conn.prepareStatement(query); 
            pre.setString(1, userID);
            pre.setString(2, password);
            rs = pre.executeQuery();
            while(rs.next()){
                return new User(rs.getString(1), rs.getString(2), rs.getString(3), 
                        rs.getString(4), rs.getBoolean(5));
            }
        }catch(Exception e){
            
        }
        return null;
    }

}
