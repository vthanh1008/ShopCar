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
 * @author Admin
 */
public class AccountDao implements IDAO<Account> {

    @Override
    public List<Account> getAll() {
        String sql = "Select *from Account";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            List<Account> ls = new ArrayList<>();

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt(1));
                a.setAccount(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setEmail(rs.getString(4));
                a.setTelephone(rs.getString(5));
                a.setDob(rs.getString(6));
                a.setName(rs.getString(7));
                ls.add(a);
            }
            return ls;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(new AccountDao().getAll());
    }

    public Account getOne(String account, String password) {
        String sql = "Select *from Account where account = ? and password=?";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            //set param
            ps.setString(1, account);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt(1));
                a.setAccount(rs.getString(2).trim());
                a.setPassword(rs.getString(3).trim());

                return a;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean add(Account accounts) {
        int check = 0;
        String sql = "INSERT INTO Account(account,password,email,telephone,dob,name) "
                + "VALUES(?,?,?,?,?,?)";
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setObject(1, accounts.getAccount());
            ps.setObject(2, accounts.getPassword());
            ps.setObject(3, accounts.getEmail());
            ps.setObject(4, accounts.getTelephone());
            ps.setObject(5, accounts.getDob());
            ps.setObject(6, accounts.getName());
            check = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return check > 0;
    }

    @Override
    public boolean update(Account obj, int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        int check = 0;
        String sql = "Delete from Account where id = ?";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setInt(1, id);
            check = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return check > 0;
    }

    @Override
    public Account getOne(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
