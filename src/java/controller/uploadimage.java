/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.Part;
import model.Koneksi;

/**
 *
 * @author Andre
 */
public class uploadimage {
    Connection conn = null;

    public uploadimage() {
        conn = (Connection) new Koneksi().getKoneksi();
    }
    
      void uploadimage(Part filepart,String kontak) throws IOException, SQLException{
          InputStream inputStream = null;
      if (filepart != null) {
            // prints out some information for debugging
            System.out.println(filepart.getName());
            System.out.println(filepart.getSize());
            System.out.println(filepart.getContentType());

            //obtains input stream of the upload file
            //the InputStream will point to a stream that contains
            //the contents of the file
            inputStream = filepart.getInputStream();
        }
      String sql = "UPDATE pelayan SET foto=? WHERE kontak=?";
      java.sql.PreparedStatement ps = conn.prepareCall(sql);
      ps.setBlob(1, inputStream);
      ps.setString(2, kontak);
      ps.executeUpdate();
      }
        
}
