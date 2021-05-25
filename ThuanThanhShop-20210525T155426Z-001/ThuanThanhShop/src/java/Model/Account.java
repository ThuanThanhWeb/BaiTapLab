/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
/**
 *
 * @author Hoang Anh
 */
public class Account {
    private String hoTen;
    private String user, pass;
    private int isSell;

    public Account() {
    }

    public Account(String hoTen, String user, String pass, int isSell) {
        this.hoTen = hoTen;
        this.user = user;
        this.pass = pass;
        this.isSell = isSell;
    }

    public String getHoTen() {
        return hoTen;
    }

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

   
    @Override
    public String toString() {
        return "{" + "hoTen: " + hoTen + ", user: " + user + ", pass: " + pass + ", isSell: " + isSell + ", isAdmin: " + '}';
    }
    
  
}
