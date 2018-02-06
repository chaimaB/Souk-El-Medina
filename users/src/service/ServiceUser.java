/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import entities.User;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.DataSource;

/**
 *
 * @author CHAIMA
 */
public class ServiceUser {
    public Connection con = DataSource.getInstance().getConnection() ;
    public Statement ste;
    
    public ServiceUser(){
        try {
            ste=con.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(ServiceUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void AjouterUser(User u) throws SQLException{
        String req="INSERT INTO user (id,cin,nom,prenon,email,pwd,dateN,numTel,userName,image,adress,role) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pre = con.prepareStatement(req);
       pre.setInt(1, 0);
        pre.setString(2, u.getCin());
        pre.setString(3, u.getNom());
        pre.setString(4, u.getPrenom());
        pre.setString(5, u.getEmail());
        pre.setString(6, u.getPwd());
        pre.setDate(7,(Date) u.getDateNaissance());
        pre.setInt(8, (int) u.getNumTel());
        pre.setString(9, u.getUsername());
        pre.setString(10, u.getImage());
        pre.setString(11, u.getAdresse());

        pre.setInt(12, u.getRole());


        pre.executeUpdate();
        System.out.println("User ajoutée");
    }
}
