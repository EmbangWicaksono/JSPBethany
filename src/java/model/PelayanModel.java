/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Pelayan;
import java.io.File;
import java.io.FileInputStream;
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
public class PelayanModel {
    Connection conn = null;
    public PelayanModel(){
        conn = (Connection) new Koneksi().getKoneksi();
    }
    public List<Pelayan> getAll(){
        List<Pelayan> listPelayan  = new ArrayList<Pelayan>();
        try {
            String query = "SELECT * FROM pelayan order by nama";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
         
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Pelayan p  = new Pelayan();
                p.setNama(rs.getString(1));
                p.setUmur(rs.getInt(2));
                p.setJeniskelamin(rs.getString(3));
                p.setMotivasi(rs.getString(4));
                p.setPosisipelayan(rs.getString(5));
                p.setKontak(rs.getString(6));
                listPelayan.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listPelayan;
    }
    
    public Pelayan getDetail(String kontak){
        Pelayan p  = new Pelayan();
        try {
            String query = "SELECT * FROM pelayan WHERE kontak=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setString(1, kontak);
         
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                p.setNama(rs.getString(1));
                p.setUmur(rs.getInt(2));
                p.setJeniskelamin(rs.getString(3));
                p.setMotivasi(rs.getString(4));
                p.setPosisipelayan(rs.getString(5));
                p.setKontak(rs.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }
    
    public String insert(Pelayan p){
        String info="";
        try {          
            String query="INSERT INTO pelayan VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = (PreparedStatement) conn.prepareCall(query);
            ps.setString(1, p.getNama());
            ps.setInt(2, p.getUmur());
            ps.setString(3, p.getJeniskelamin());
            ps.setString(4, p.getMotivasi());
            ps.setString(5, p.getPosisipelayan());
            ps.setString(6, p.getKontak());
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    
    public String update(String kontak, Pelayan p){
        String info = "";
        try {          
            String query="UPDATE pelayan SET nama=?, umur=?, jeniskelamin=?, motivasi=?, posisipelayan=?, kontak=? WHERE kontak=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setString(1, p.getNama());
            ps.setInt(2, p.getUmur());
            ps.setString(3, p.getJeniskelamin());
            ps.setString(4, p.getMotivasi());
            ps.setString(5, p.getPosisipelayan());
            ps.setString(6, p.getKontak());
            ps.setString(7, kontak);
            ps.executeUpdate();
            info = "success";	
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
}
