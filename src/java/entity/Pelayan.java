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
public class Pelayan {
    private String nama;
    private int umur;
    private String jeniskelamin;
    private String motivasi;
    private String posisipelayan;
    private String kontak;

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public int getUmur() {
        return umur;
    }

    public void setUmur(int umur) {
        this.umur = umur;
    }

    public String getJeniskelamin() {
        return jeniskelamin;
    }

    public void setJeniskelamin(String jeniskelamin) {
        this.jeniskelamin = jeniskelamin;
    }

    public String getMotivasi() {
        return motivasi;
    }

    public void setMotivasi(String motivasi) {
        this.motivasi = motivasi;
    }

    public String getPosisipelayan() {
        return posisipelayan;
    }

    public void setPosisipelayan(String posisipelayan) {
        this.posisipelayan = posisipelayan;
    }

    public String getKontak() {
        return kontak;
    }

    public void setKontak(String kontak) {
        this.kontak = kontak;
    }

}
