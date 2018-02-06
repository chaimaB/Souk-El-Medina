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
        String req="INSERT INTO `produit`(`ref`, `nomP`, `prix`, `nomV`, `dateAjout`) VALUES (?,?,?,?,?)";
        PreparedStatement pre = con.prepareStatement(req);
        
        pre.setInt(1, p.getRef());
        pre.setString(2, p.getNomP());
        pre.setFloat(3, (int) p.getPrix());
        pre.setString(4, p.getNomV());
        pre.setDate(5, p.getDateAjout());
       

        pre.executeUpdate();
        System.out.println("Produit ajoutée");
    }
     
     
         public void UpdateProduit(produit p,int ref){
        try {
            String req;
            req = "UPDATE `produit` SET `ref`=?,`nomP`=?,`prix`=?,`nomV`=?,`dateAjout`=? WHERE ref=1";
            
            PreparedStatement pre=con.prepareStatement(req);
            pre.setInt(1, ref);
           
        pre.setString(2, p.getNomP());
        pre.setFloat(3, (int) p.getPrix());
        pre.setString(4, p.getNomV());
        pre.setDate(5, p.getDateAjout());
            pre.executeUpdate();
            System.out.println(pre.execute());
            System.out.println("Modification avec succès");
        } catch (SQLException ex) {
            Logger.getLogger(ServiceProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
}
         
              public void SupprimerProduit(int ref){

        try {
            String req = "DELETE FROM produit WHERE ref=?";
            PreparedStatement ste1=con.prepareStatement(req);
            ste1.setInt(1, ref);
            ste1.executeUpdate();
            System.out.println(ste1.execute());
         System.out.println("suppression avec succès");
        } catch (SQLException ex) {
            Logger.getLogger(ServiceProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
           
      
     } 
}
