/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author 672016198
 */
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import entity.Mahasiswa;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MahasiswaModel {
    Connection conn = null;
    public MahasiswaModel(){
        conn = (Connection) new Koneksi().getKoneksi();
    }
    public List<Mahasiswa> getAll(){
        List<Mahasiswa> listMhs  = new ArrayList<Mahasiswa>();
        try {
            String query = "SELECT * FROM mahasiswa order by nama desc";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
         
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Mahasiswa m  = new Mahasiswa();
                m.setNim(rs.getInt(1));
                m.setNama(rs.getString(2));
                m.setProgdi(rs.getString(3));
                listMhs.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listMhs;
    }
    
    public Mahasiswa getDetail(int nim){
        Mahasiswa m  = new Mahasiswa();
        try {
            String query = "SELECT * FROM mahasiswa WHERE nim=?";
            PreparedStatement ps =(PreparedStatement) conn.prepareCall(query);
            ps.setInt(1, nim);
         
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                m.setNim(rs.getInt(1));
                m.setNama(rs.getString(2));
                m.setProgdi(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return m;
    }
    
    public String insert(Mahasiswa m){
        String info="";
        try {          
            String query="INSERT INTO mahasiswa VALUES(?,?,?)";
            PreparedStatement ps=(PreparedStatement) conn.prepareCall(query);
            ps.setInt(1, m.getNim());
            ps.setString(2, m.getNama());
            ps.setString(3, m.getProgdi());
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }

    public String update(int nim, Mahasiswa m){
        String info = "";
        try {          
            String query="UPDATE mahasiswa SET nim=?, nama=?, progdi=? WHERE nim=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setInt(1, m.getNim());
            ps.setString(2, m.getNama());
            ps.setString(3, m.getProgdi());
            ps.setInt(4, nim);
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {
            info = ex.getMessage();
        }
        return info;
    }
    
    public String delete(int nim){
        String info = "";
        try {          
            String query="DELETE FROM mahasiswa WHERE nim=?";
            java.sql.PreparedStatement ps= conn.prepareCall(query);
            ps.setInt(1, nim);
            ps.executeUpdate();
            info = "success";
        } catch (SQLException ex) {            
            info = ex.getMessage();
        }
        return info;
    }
}
