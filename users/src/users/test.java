/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package users;
import entities.produit;
import java.sql.Date;
import java.text.ParseException;
import java.util.Scanner;
import service.ServiceProduit;

/**
 *
 * @author Amine
 */
public class test {
    
    
     public static void main(String[] args) throws ParseException  {
         Scanner sc = new Scanner (System.in);
         
         ServiceProduit sp = new ServiceProduit();
         
         
//         System.out.print("entrer le ref de produit :");
//         String i =sc.nextLine();
//         int ref = Integer.parseInt(i);
//         System.out.println("entrer le nom de produit :");
//         String nomP = sc.nextLine();
//         System.out.println("entrer le prix de produit :");
//         String p =sc.nextLine();
//         int prix = Integer.parseInt(p);
//         System.out.print("entrer nom vendeur :");
//         String nomV = sc.nextLine();
       
                 
        
         produit produits =new produit(2, "AA", 76, "OIU", new Date (118,02,00));
//        try {
//            sp.AjouterProduit(produits);
//        } catch (SQLException ex) {
//            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
//        }
         
//         sp.UpdateProduit(produits, 5);
         
           sp.SupprimerProduit(5);
         
         
         
    
    }
}
