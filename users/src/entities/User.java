/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.sql.Date;


/**
 *
 * @author CHAIMA
 */
public class User {
     private int id ;
    private String cin ;
    private String nom ;
    private String prenom ;
    private String email ;
    private String pwd ;
    private Date dateNaissance;
    private  int numTel;
    private String username;
    private String image ;
    private  String adresse;
    private int role ;
    private static User connectUser;

    public User(int id, String cin, String nom, String prenom, String email, String pwd, Date dateNaissance, int numTel, String username, String image, String adresse, int role) {
        this.id = id;
        this.cin = cin;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.pwd = pwd;
        this.dateNaissance = dateNaissance;
        this.numTel = numTel;
        this.username = username;
        this.image = image;
        this.adresse = adresse;
        this.role = role;
    }


    

   

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public static User getConnectUser() {
        return connectUser;
    }

    public static void setConnectUser(User connectUser) {
        User.connectUser = connectUser;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getNumTel() {
        return numTel;
    }

    public void setNumTel(int numTel) {
        this.numTel = numTel;
    }

    public String getPwd() {
        return pwd;
    }

    public int getRole() {
        return role;
    }

    

    public void setRole(int role) {
        this.role = role;
    }
    

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "User {"+"";
    }
    
    
}
