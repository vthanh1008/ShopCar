/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Order {
    private int id;
    private int customerId;
    private Date createDate;
    private float totalPrice;
    private int statusId;
    private String note;

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Order(int id, int customerId, Date createDate, float totalPrice, String note) {
        this.id = id;
        this.customerId = customerId;
        this.createDate = createDate;
        this.totalPrice = totalPrice;
        this.note = note;
    }

    public Order() {
    }

    public Order(int customerId, Date createDate, float totalPrice, String note) {
        this.customerId = customerId;
        this.createDate = createDate;
        this.totalPrice = totalPrice;
        this.note = note;
    }
    
    
    
}
