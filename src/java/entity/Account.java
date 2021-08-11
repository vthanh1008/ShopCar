/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Admin
 */
public class Account {

    private int id;
    private String account;
    private String password;
    private String email;
    private String telephone;
    private String dob;
    private String name;

    public Account(String account, String password, String email, String telephone, String dob, String name) {
        this.account = account;
        this.password = password;
        this.email = email;
        this.telephone = telephone;
        this.dob = dob;
        this.name = name;
    }

    public Account(String account, String password, String email, String name) {
        this.account = account;
        this.password = password;
        this.email = email;
        this.name = name;
    }
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Account() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", account=" + account + ", password=" + password + ", email=" + email + ", telephone=" + telephone + ", dob=" + dob + ", name=" + name + '}';
    }

 

}
