/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Andre
 */
public class Event {
    private String kodeevent;
    private String judul;
    private String deskripsi;

    public String getKodeevent() {
        return kodeevent;
    }

    public void setKodeevent(String kodeevent) {
        this.kodeevent = kodeevent;
    }

    public String getJudul() {
        return judul;
    }

    public void setJudul(String judul) {
        this.judul = judul;
    }

    public String getDeskripsi() {
        return deskripsi;
    }

    public void setDeskripsi(String deskripsi) {
        this.deskripsi = deskripsi;
    }
    
}
