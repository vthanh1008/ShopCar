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
public class Products {

    private int id;
    private String name;
    private int brandId;
    private int typeId;
    private int statusId;
    private int quanlity;
    private String description;
    private float price;
    private String images;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Products(int id, String name, int brandId, int typeId, int statusId, int quanlity, String description, float price, String images) {
        this.id = id;
        this.name = name;
        this.brandId = brandId;
        this.typeId = typeId;
        this.statusId = statusId;
        this.quanlity = quanlity;
        this.description = description;
        this.price = price;
        this.images = images;
    }

    public Products(String name, int brandId, int typeId, int statusId, int quanlity, String description, float price, String images) {
        this.name = name;
        this.brandId = brandId;
        this.typeId = typeId;
        this.statusId = statusId;
        this.quanlity = quanlity;
        this.description = description;
        this.price = price;
        this.images = images;
    }
    

    public Products() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public int getQuanlity() {
        return quanlity;
    }

    public void setQuanlity(int quanlity) {
        this.quanlity = quanlity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    @Override
    public String toString() {
        return "Products{" + "id=" + id + ", name=" + name + ", brandId=" + brandId + ", typeId=" + typeId + ", statusId=" + statusId + ", quanlity=" + quanlity + ", description=" + description + ", price=" + price + ", images=" + images + '}';
    }
     

}
