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
import pe.entity.Product;

/**
 *
 * @author thanl
 */
public class ProductDAO {
    Connection conn = null; 
    PreparedStatement pre = null; 
    ResultSet re = null; 
      public List<Product> getlist() {
        String query = "select *from Product";
        try {
            conn = new DBUtils().getConnection();
            pre = conn.prepareStatement(query);
            re = pre.executeQuery();
            List<Product> list = new ArrayList<>();
            while (re.next()) {
                Product o = new Product(re.getString(1), re.getString(2), re.getString(3), re.getString(4), re.getFloat(5), re.getInt(6));
                list.add(o);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
      
      public Product get(String id){
      String sql ="SELECT * FROM Product\n" +
"WHERE name LIKE '%?%'";
          try {
              conn = new pe.utils.DBUtils().getConnection();
              pre = conn.prepareStatement(sql);
              re = pre.executeQuery();
              while(re.next())
                  return new Product(re.getString(1), re.getString(2),re.getString(3), re.getString(4), re.getFloat(5), re.getInt(6));
          } catch (Exception e) {
          }
      return null;
      }
}
