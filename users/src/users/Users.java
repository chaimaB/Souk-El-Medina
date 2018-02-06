/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import entities.User;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import service.ServiceUser;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Scanner;

/**
 *
 * @author CHAIMA
 */
public class Users {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ParseException  {
        // TODO code application logic here
     //User   user = new User(0,"04745", "fares", "mag", "fares@luf", "pwd",new Date(118,00,05), 25252525, "username", "image", "adresse", 1);
     Scanner sc = new Scanner(System.in);
     
     ServiceUser su= new ServiceUser();
     System.out.println("entre votre id :");
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
/*System.out.println("Saisissez une date (JJ/MM/AAAA) :");
String dat = sc.nextLine();
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
Date datee = (Date) format.parse(dat);
     
         java.sql.Date date = new java.sql.Date(datee.getTime());
*/
//if(date.matches("[0-9]{2}/[0-9]{2}/[0-9]{4}")){
  //  SimpleDateFormat f = new SimpleDateFormat("MM-dd-yyyy");
    //:     Date date = (Date) f.parse(sDate);
//}
//else {
  //  System.out.println("Erreur format");
//}
System.out.println("Veuillez saisir votre numero de telephone :");
String numte = sc.nextLine();
int numtel= Integer.parseInt(numte);
System.out.println("Veuillez saisir votre pseudo");
String username =sc.nextLine();
System.out.println("inserer votre image ");
String image=sc.nextLine();

System.out.println("inserer votre adress");
String adress=sc.nextLine();
System.out.println("inserer votre role ");
String rol=sc.nextLine();
 int role=Integer.parseInt(rol);
User user =new User(id,cin,nom,prenom,email,pwd,new Date(118,00,05),numtel,username,image,adress,role);
        try {
            su.AjouterUser(user);
        } catch (SQLException ex) {
            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}