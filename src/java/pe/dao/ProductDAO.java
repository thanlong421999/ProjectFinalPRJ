/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import pe.utils.DBUtils;
import pe.entity.Object;

/**
 *
 * @author thanl
 */
public class ObjectDAO {
    Connection conn = null; 
    PreparedStatement pre = null; 
    ResultSet re = null; 
      public List<Object> getlist() {
        String query = "select *from Object";
        try {
            conn = new DBUtils().getConnection();
            pre = conn.prepareStatement(query);
            re = pre.executeQuery();
            List<Object> list = new ArrayList<>();
            while (re.next()) {
                Object o = new Object(re.getString(1), re.getString(2), re.getString(3), re.getString(4), re.getFloat(5), re.getInt(6));
                list.add(o);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
      
      public Object get(String id){
      String sql ="SELECT * FROM Object\n" +
"WHERE name LIKE '%?%'";
          try {
              conn = new pe.utils.DBUtils().getConnection();
              pre = conn.prepareStatement(sql);
              re = pre.executeQuery();
              while(re.next())
                  return new Object(re.getString(1), re.getString(2),re.getString(3), re.getString(4), re.getFloat(5), re.getInt(6));
          } catch (Exception e) {
          }
      return null;
      }
}
