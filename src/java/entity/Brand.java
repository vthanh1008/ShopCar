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
public class Brand {
    private int id;
    private String brand;
    private int statusid;

    public Brand(int id, String brand, int statusid) {
        this.id = id;
        this.brand = brand;
        this.statusid = statusid;
    }

    public Brand() {
    }

    public int getStatusid() {
        return statusid;
    }

    public void setStatusid(int statusid) {
        this.statusid = statusid;
    }

  

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    @Override
    public String toString() {
        return "Brand{" + "id=" + id + ", brand=" + brand + ", statusid=" + statusid + '}';
    }
    
}
