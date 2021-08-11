/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO.Filter;

import DAO.IDAO;
import JDBC.SQLServerConnection;
import entity.Type;
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
public class TypeDao implements IDAO<Type>{

    @Override
    public List<Type> getAll() {
          String sql = "Select *from Type";
        //try with resource
        try (Connection con = SQLServerConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);) {
            List<Type> ls = new ArrayList<>();

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Type t= new Type();
                t.setId(rs.getInt(1));
                t.setType(rs.getString(2).trim());
                t.setStatusid(rs.getInt(3));
                t.setIcon(rs.getString(4).trim());
                ls.add(t);
            }
            return ls;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    
    @Override
    public Type getOne(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Type obj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Type obj, int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
