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
public class Customer {
      private int id;
      private String name;
      private String telephone;
      private String email;
      private String address;

    public Customer() {
    }

    public Customer(int id, String name, String telephone, String email, String address) {
        this.id = id;
        this.name = name;
        this.telephone = telephone;
        this.email = email;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Customer(String name, String telephone, String email, String address) {
        this.name = name;
        this.telephone = telephone;
        this.email = email;
        this.address = address;
    }

    @Override
    public String toString() {
        return "Customer{" + "id=" + id + ", name=" + name + ", telephone=" + telephone + ", email=" + email + ", address=" + address + '}';
    }
    
      
}
