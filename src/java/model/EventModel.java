/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Event;
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
public class EventModel {
    Connection conn = null;
    public EventModel(){
        conn = (Connection) new Koneksi().getKoneksi();
    }
    public List<Event> getAll(){
        List<Event> listEvent  = new ArrayList<Event>();
        try {
            String query = "SELECT * FROM event order by kodeevent";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
         
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Event ev  = new Event();
                ev.setKodeevent(rs.getString(1));
                ev.setJudul(rs.getString(2));
                ev.setDeskripsi(rs.getString(3));
                listEvent.add(ev);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listEvent;
    }
    
    public Event getDetail(String kodeevent){
        Event ev  = new Event();
        try {
            String query = "SELECT * FROM event WHERE kodeevent=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setString(1, kodeevent);
         
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                ev.setKodeevent(rs.getString(1));
                ev.setJudul(rs.getString(2));
                ev.setDeskripsi(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ev;
    }
    
    public Event getDetailJudul(String judul){
        Event eve  = new Event();
        try {
            String query = "SELECT * FROM event WHERE judul=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setString(1, judul);
         
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                eve.setKodeevent(rs.getString(1));
                eve.setJudul(rs.getString(2));
                eve.setDeskripsi(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return eve;
    }
    
    public String insert(Event ev){
        String info="";
        try {          
            String query="INSERT INTO event VALUES(?,?,?)";
            PreparedStatement ps = (PreparedStatement) conn.prepareCall(query);
            ps.setString(1, ev.getKodeevent());
            ps.setString(2, ev.getJudul());
            ps.setString(3, ev.getDeskripsi());
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    
    public String update(String kodeevent, Event ev){
        String info = "";
        try {          
            String query="UPDATE event SET kodeevent=?, judul=?, deskripsi=? WHERE kodeevent=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setString(1, ev.getKodeevent());
            ps.setString(2, ev.getJudul());
            ps.setString(3, ev.getDeskripsi());
            ps.setString(4, kodeevent);
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
            String query="DELETE FROM event WHERE kodeevent=?";
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
