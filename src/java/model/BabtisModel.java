/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Babtis;
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
public class BabtisModel {
    Connection conn = null;
    public BabtisModel(){
        conn = (Connection) new Koneksi().getKoneksi();
    }
    public List<Babtis> getAll(){
        List<Babtis> listBabtis  = new ArrayList<Babtis>();
        try {
            String query = "SELECT * FROM babtis order by nama";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
         
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Babtis b  = new Babtis();
                b.setNama(rs.getString(1));
                b.setNik(rs.getString(2));
                b.setTtl(rs.getString(3));
                b.setAlamat(rs.getString(4));
                b.setJeniskelamin(rs.getString(5));
                b.setKontak(rs.getString(6));
                listBabtis.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listBabtis;
    }
    
    public Babtis getDetail(String nik){
        Babtis b  = new Babtis();
        try {
            String query = "SELECT * FROM babtis WHERE nik=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setString(1, nik);
         
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                b.setNama(rs.getString(1));
                b.setNik(rs.getString(2));
                b.setTtl(rs.getString(3));
                b.setAlamat(rs.getString(4));
                b.setJeniskelamin(rs.getString(5));
                b.setKontak(rs.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }
    
    public String insert(Babtis b){
        String info="";
        try {          
            String query="INSERT INTO babtis VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = (PreparedStatement) conn.prepareCall(query);
            ps.setString(1, b.getNama());
            ps.setString(2, b.getNik());
            ps.setString(3, b.getTtl());
            ps.setString(4, b.getAlamat());
            ps.setString(5, b.getJeniskelamin());
            ps.setString(6, b.getKontak());
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    
    public String update(String nik, Babtis b){
        String info = "";
        try {          
            String query="UPDATE babtis SET nama=?, nik=?, ttl=?, alamat=?, jeniskelamin=?, kontak=? WHERE nik=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setString(1, b.getNama());
            ps.setString(2, b.getNik());
            ps.setString(3, b.getTtl());
            ps.setString(4, b.getAlamat());
            ps.setString(5, b.getJeniskelamin());
            ps.setString(6, b.getKontak());
            ps.setString(7, nik);
            ps.executeUpdate();
            info = "success";	
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
}
