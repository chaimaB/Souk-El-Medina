/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entities;

import java.sql.Date;

/**
 *
 * @author Amine
 */
public class produit {
     private int ref ;
     private String nomP;
     private float prix;
     private String nomV;
     private Date dateAjout;
     
public produit (int ref , String nomP , double prix , String nomV , Date dateAjout) {
    this.ref=ref ;
    this.nomP=nomP;
    this.prix=(int) prix;
    this.nomV=nomV;
    this.dateAjout=dateAjout; 
}

    public int getRef() {
        return ref;
    }

    public String getNomP() {
        return nomP;
    }

    public double getPrix() {
        return prix;
    }

    public String getNomV() {
        return nomV;
    }

    public Date getDateAjout() {
        return dateAjout;
    }

    public void setRef(int ref) {
        this.ref = ref;
    }

    public void setNomP(String nomP) {
        this.nomP = nomP;
    }

    public void setPrix(float prix) {
        this.prix = prix;
    }

    public void setNomV(String nomV) {
        this.nomV = nomV;
    }

    public void setDateAjout(Date dateAjout) {
        this.dateAjout = dateAjout;
    }


     
     @Override
    public String toString () {
    return "" ;
    }
}
