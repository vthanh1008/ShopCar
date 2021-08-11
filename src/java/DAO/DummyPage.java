/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import JDBC.SQLServerConnection;
import entity.Products;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class DummyPage {

    public List<Products> getDummies(int pagesize, int pageindex) {
        String sql = "SELECT id,name,images,price,[quantity],[type_id],[brand_id],[description],[status_id] FROM\n"
                + "(SELECT ROW_NUMBER() OVER (ORDER BY id ASC) as rownum, id,name,"
                + "images,price,[quantity],[type_id],[brand_id],[description],[status_id] FROM Products) tbl\n"
                + "WHERE \n"
                + "rownum >= (? - 1)* ? + 1 AND rownum <= ? * ?;";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setInt(1, pageindex);
            ps.setInt(2, pagesize);
            ps.setInt(3, pagesize);
            ps.setInt(4, pageindex);
            List<Products> ls = new ArrayList<>();
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Products p = new Products();
                p.setId(rs.getInt(1));
                p.setName(rs.getString(2).trim());
                p.setImages(rs.getString(3).trim());
                p.setPrice(rs.getFloat(4));
                p.setQuanlity(rs.getInt(5));
                p.setTypeId(rs.getInt(6));
                p.setBrandId(rs.getInt(7));
                p.setDescription(rs.getString(8).trim());
                p.setStatusId(rs.getInt(9));
                ls.add(p);
            }
            return ls;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(new DummyPage().countDummies());
    }

    public int countDummies() {
        String sql="SELECT COUNT(*) as total FROM Products";
           try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
               ResultSet rs = ps.executeQuery();
                if(rs.next())
            {
                return rs.getInt("total");
            }
           } catch (SQLException ex) {
            Logger.getLogger(DummyPage.class.getName()).log(Level.SEVERE, null, ex);
        }
           return 0;
    }
}
