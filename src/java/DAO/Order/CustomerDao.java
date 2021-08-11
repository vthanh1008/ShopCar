/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Order;

import DAO.IDAO;
import JDBC.SQLServerConnection;
import entity.Customer;
import entity.Products;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Admin
 */
public class CustomerDao implements IDAO<Customer> {
    
    @Override
    public List<Customer> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public Customer getOne(int id) {
        String sql = "select *from Customer where id=?";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            //set param
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Customer c = new Customer();
                c.setId(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setTelephone(rs.getString(3));
                c.setEmail(rs.getString(4));
                c.setAddress(rs.getString(5));
                return c;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
        public static void main(String[] args) {
        
        System.out.println(new CustomerDao().getOne(2));
    }
    
    @Override
    public boolean add(Customer c) {
              int check = 0;
        String sql = "INSERT INTO Customer(name,telephone,email,address) "
                + "VALUES(?,?,?,?)";
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setObject(1, c.getName());
            ps.setObject(2, c.getTelephone());
            ps.setObject(3, c.getEmail());
            ps.setObject(4, c.getAddress());
      
            check = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return check > 0;
    }

    
    @Override
    public boolean update(Customer obj, int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
