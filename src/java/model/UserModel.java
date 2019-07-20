/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Andre
 */
public class UserModel {
    Connection conn = null;
    public UserModel(){
        conn = (Connection) new Koneksi().getKoneksi();
    }
    public List<User> getAll(){
        List<User> listUser  = new ArrayList<User>();
        try {
            String query = "SELECT * FROM user order by username";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
         
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                User u  = new User();
                u.setUsername(rs.getString(1));
                u.setPassword(rs.getString(2));
                u.setNama(rs.getString(3));
                u.setEmail(rs.getString(4));
                u.setKontak(rs.getString(5));
                listUser.add(u);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listUser;
    }
    
    public User getDetail(String username){
        User u  = new User();
        try {
            String query = "SELECT * FROM user WHERE username=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setString(1, username);
         
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                u.setUsername(rs.getString(1));
                u.setPassword(rs.getString(2));
                u.setNama(rs.getString(3));
                u.setEmail(rs.getString(4));
                u.setKontak(rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return u;
    }
    
    public String insert(User u){
        String info="";
        try {          
            String query="INSERT INTO user VALUES(?,?,?,?,?)";
            PreparedStatement ps = (PreparedStatement) conn.prepareCall(query);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getNama());
            ps.setString(4, u.getEmail());
            ps.setString(5, u.getKontak());
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    
    public String update(String username, User u){
        String info = "";
        try {          
            String query="UPDATE user SET username=?, password=?, nama=?, email=?, kontak=? WHERE username=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getNama());
            ps.setString(4, u.getEmail());
            ps.setString(5, u.getKontak());
            ps.setString(6, username);
            ps.executeUpdate();
            info = "success";	
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
}
