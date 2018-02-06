/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package service;

import entities.produit;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.DataSource;

/**
 *
 * @author Amine
 */
public class ServiceProduit {
    public Connection con = DataSource.getInstance().getConnection() ;
    public Statement ste;
    
    public ServiceProduit(){
        try {
            ste=con.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(ServiceUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
     public void AjouterProduit(produit p) throws SQLException{
        String req="INSERT INTO Produit () VALUES()";
        PreparedStatement pre = con.prepareStatement(req);
        pre.setInt(1, 0);
        pre.setInt(2, p.getRef());
        pre.setString(3, p.getNomP());
        pre.setDouble(4, p.getPrix());
        pre.setString(5, p.getNomV());
        pre.setDate(6, p.getDateAjout());
       

        pre.executeUpdate();
        System.out.println("Produit ajoutée");
    }
}
