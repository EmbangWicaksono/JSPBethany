/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Peserta;
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
public class PesertaModel {
    Connection conn = null;
    public PesertaModel(){
        conn = (Connection) new Koneksi().getKoneksi();
    }
    public List<Peserta> getAll(){
        List<Peserta> listPeserta  = new ArrayList<Peserta>();
        try {
            String query = "SELECT * FROM peserta order by nama";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
         
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Peserta p  = new Peserta();
                p.setNama(rs.getString(1));
                p.setKontak(rs.getString(2));
                p.setKodeevent(rs.getString(3));
                listPeserta.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listPeserta;
    }
    
    public List<Peserta> getAll2(String kodeevent){
        List<Peserta> listPeserta  = new ArrayList<Peserta>();
        try {
            String query = "SELECT * FROM peserta WHERE kodeevent=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setString(1, kodeevent);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Peserta p  = new Peserta();
                p.setNama(rs.getString(1));
                p.setKontak(rs.getString(2));
                p.setKodeevent(rs.getString(3));
                listPeserta.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listPeserta;
    }
    
    public Peserta getDetail(String nama){
        Peserta p  = new Peserta();
        try {
            String query = "SELECT * FROM peserta WHERE nama=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setString(1, nama);
         
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                p.setNama(rs.getString(1));
                p.setKontak(rs.getString(2));
                p.setKodeevent(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }
    
    public String insert(Peserta p){
        String info="";
        try {          
            String query="INSERT INTO peserta VALUES(?,?,?)";
            PreparedStatement ps = (PreparedStatement) conn.prepareCall(query);
            ps.setString(1, p.getNama());
            ps.setString(2, p.getKontak());
            ps.setString(3, p.getKodeevent());
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    
    public String update(String nama, Peserta p){
        String info = "";
        try {          
            String query="UPDATE peserta SET nama=?, kontak=?, kodeevent=? WHERE nama=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setString(1, p.getNama());
            ps.setString(2, p.getKontak());
            ps.setString(3, p.getKodeevent());
            ps.setString(4, nama);
            ps.executeUpdate();
            info = "success";	
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    
    public String delete(String kodeevent){
        String info = "";
        try {          
            String query="DELETE FROM peserta WHERE kodeevent=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setString(1, kodeevent);
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {            
            info = ex.getMessage();
        }
        return info;
    }
}
