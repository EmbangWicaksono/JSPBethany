/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Artikel;
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
public class ArtikelModel {
    Connection conn = null;
    public ArtikelModel(){
        conn = (Connection) new Koneksi().getKoneksi();
    }
    public List<Artikel> getAll(){
        List<Artikel> listArtikel  = new ArrayList<Artikel>();
        try {
            String query = "SELECT * FROM artikel";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
         
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Artikel a  = new Artikel();
                a.setJudul(rs.getString(1));
                a.setDeskripsi(rs.getString(2));
                a.setUsername(rs.getString(3));
                listArtikel.add(a);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listArtikel;
    }
    
    public Artikel getDetail(String judul){
        Artikel a  = new Artikel();
        try {
            String query = "SELECT * FROM artikel WHERE judul=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setString(1, judul);
         
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                a.setJudul(rs.getString(1));
                a.setDeskripsi(rs.getString(2));
                a.setUsername(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return a;
    }
    
    public String insert(Artikel a){
        String info="";
        try {          
            String query="INSERT INTO artikel VALUES(?,?,?)";
            PreparedStatement ps = (PreparedStatement) conn.prepareCall(query);
            ps.setString(1, a.getJudul());
            ps.setString(2, a.getDeskripsi());
            ps.setString(3, a.getUsername());
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    
    public String update(String judul, Artikel a){
        String info = "";
        try {          
            String query="UPDATE artikel SET judul=?, deskripsi=?, username=? WHERE judul=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setString(1, a.getJudul());
            ps.setString(2, a.getDeskripsi());
            ps.setString(3, a.getUsername());
            ps.setString(4, judul);
            ps.executeUpdate();
            info = "success";	
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    public String delete(String judul){
        String info = "";
        try {          
            String query="DELETE FROM artikel WHERE judul=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setString(1, judul);
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {            
            info = ex.getMessage();
        }
        return info;
    }
}
