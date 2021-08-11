/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import JDBC.SQLServerConnection;
import entity.Account;
import entity.Products;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author A410R
 */
public class ProductsDao {

    public List<Products> getAll() {
        String sql = "Select *from Products";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            List<Products> ls = new ArrayList<>();

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Products a = new Products();
                a.setId(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setImages(rs.getString(3));
                a.setPrice(rs.getFloat(4));
                a.setQuanlity(rs.getInt(5));
                a.setTypeId(rs.getInt(6));
                a.setBrandId(rs.getInt(7));
                a.setDescription(rs.getString(8));
                a.setStatusId(rs.getInt(9));
                ls.add(a);
            }
            return ls;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean update(Products products) {
        int check = 0;
        String sql = "UPDATE Products SET name=?, images=?, price=?, "
                + "quantity=?,type_id=?,brand_id=?,description=?,status_id=?";
        sql += " WHERE id=?";
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setObject(1, products.getName());
            ps.setObject(2, products.getImages());
            ps.setObject(3, products.getPrice());
            ps.setObject(4, products.getQuanlity());
            ps.setObject(5, products.getTypeId());
            ps.setObject(6, products.getBrandId());
            ps.setObject(7, products.getDescription());
            ps.setObject(8, products.getStatusId());
            ps.setObject(9, products.getId());

            check = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return check > 0;
    }

    public List<Products> getAllbyTypeID(int typeid) {
        String sql = "Select *from Products where type_id= ?";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            List<Products> ls = new ArrayList<>();
            ps.setObject(1, typeid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Products a = new Products();
                a.setId(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setImages(rs.getString(3));
                a.setPrice(rs.getFloat(4));
                a.setQuanlity(rs.getInt(5));
                a.setTypeId(rs.getInt(6));
                a.setBrandId(rs.getInt(7));
                a.setDescription(rs.getString(8));
                a.setStatusId(rs.getInt(9));
                ls.add(a);
            }
            return ls;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void delete(int id) {
        String sql = "DELETE FROM Products WHERE id = ?";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            List<Products> ls = new ArrayList<>();
            ps.setObject(1, id);

            ResultSet rs = ps.executeQuery();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public Products getOne(int id) {
        String sql = "Select *from Products where id = ?";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            Products a = new Products();
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                a.setId(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setImages(rs.getString(3));
                a.setPrice(rs.getFloat(4));
                a.setQuanlity(rs.getInt(5));
                a.setTypeId(rs.getInt(6));
                a.setBrandId(rs.getInt(7));
                a.setDescription(rs.getString(8));
                a.setStatusId(rs.getInt(9));

            }
            return a;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Products> getAllbyBrandID(int brandId) {
        String sql = "Select *from Products where brand_id = ?";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            List<Products> ls = new ArrayList<>();
            ps.setObject(1, brandId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Products a = new Products();
                a.setId(rs.getInt(1));
                a.setName(rs.getString(2));
                a.setImages(rs.getString(3));
                a.setPrice(rs.getFloat(4));
                a.setQuanlity(rs.getInt(5));
                a.setTypeId(rs.getInt(6));
                a.setBrandId(rs.getInt(7));
                a.setDescription(rs.getString(8));
                a.setStatusId(rs.getInt(9));
                ls.add(a);
            }
            return ls;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Products> search(String name) {
        String sql = "select *from Products where name like ?";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            List<Products> ls = new ArrayList<>();

            ps.setObject(1, "%" + name + "%");
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
    
    
    public boolean add(Products products) {
        int check = 0;
        String sql = "INSERT INTO Products(name,images,price,quantity,type_id,brand_id,description,status_id) "
                + "VALUES(?,?,?,?,?,?,?,?)";
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setObject(1, products.getName());
            ps.setObject(2, products.getImages());
            ps.setObject(3, products.getPrice());
            ps.setObject(4, products.getQuanlity());
            ps.setObject(5, products.getTypeId());
            ps.setObject(6, products.getBrandId());
            ps.setObject(7, products.getDescription());
            ps.setObject(8, products.getStatusId());
            check = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return check > 0;
    }
    public static void main(String[] args) {
        ProductsDao dao = new ProductsDao();
        
        System.out.println(dao.search("cla"));
    }
}
