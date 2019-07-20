/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Pesan;
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
public class PesanModel {
    Connection conn = null;
    public PesanModel(){
        conn = (Connection) new Koneksi().getKoneksi();
    }
    public List<Pesan> getAll(){
        List<Pesan> listPesan  = new ArrayList<Pesan>();
        try {
            String query = "SELECT * FROM pesan order by nama";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
         
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Pesan p  = new Pesan();
                p.setNama(rs.getString(1));
                p.setEmail(rs.getString(2));
                p.setIsipesan(rs.getString(3));
                listPesan.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listPesan;
    }
    
    public Pesan getDetail(String email){
        Pesan p  = new Pesan();
        try {
            String query = "SELECT * FROM pesan WHERE email=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setString(1, email);
         
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                p.setNama(rs.getString(1));
                p.setEmail(rs.getString(2));
                p.setIsipesan(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }
    
    public String insert(Pesan p){
        String info="";
        try {          
            String query="INSERT INTO pesan VALUES(?,?,?)";
            PreparedStatement ps = (PreparedStatement) conn.prepareCall(query);
            ps.setString(1, p.getNama());
            ps.setString(2, p.getEmail());
            ps.setString(3, p.getIsipesan());
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    
    public String update(String email, Pesan p){
        String info = "";
        try {          
            String query="UPDATE artikel SET nama=?, email=?, isipesan=? WHERE email=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setString(1, p.getNama());
            ps.setString(2, p.getEmail());
            ps.setString(3, p.getIsipesan());
            ps.setString(4, email);
            ps.executeUpdate();
            info = "success";	
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
}
