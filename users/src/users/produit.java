/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package users;

import java.text.ParseException;
import java.util.Scanner;
import service.ServiceProduit;

/**
 *
 * @author Amine
 */
public class produit {
    
    
     public static void main(String[] args) throws ParseException  {
        // TODO code application logic here
     //User   user = new User(0,"04745", "fares", "mag", "fares@luf", "pwd",new Date(118,00,05), 25252525, "username", "image", "adresse", 1);
     Scanner sc = new Scanner(System.in);
     
     ServiceProduit sp= new ServiceProduit();
     System.out.println("entre votre nom de produit :");
String i = sc.nextLine();
 int id =Integer.parseInt(i);
System.out.println("entrer votre CIN:");
String cin = sc.nextLine();
System.out.println("Veuillez saisir votre nom :");
String nom = sc.nextLine();
System.out.println("Veuillez saisir votre prenom:");
String prenom = sc.nextLine();
System.out.println("Veuillez saisir votre email :");
String email = sc.nextLine();
System.out.println("Veuillez saisir votre mot de passe :");
String pwd= sc.nextLine();
    
}
