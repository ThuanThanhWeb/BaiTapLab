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
public class CartProductInfo {
    private String name, type, image, id;
    private int oldPrice, curPrice, soLuong;

    public CartProductInfo() {
    }

    public CartProductInfo(String name, String type, String image, String id, int oldPrice, int curPrice, int soLuong) {
        this.name = name;
        this.type = type;
        this.image = image;
        this.id = id;
        this.oldPrice = oldPrice;
        this.curPrice = curPrice;
        this.soLuong = soLuong;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public String getImage() {
        return image;
    }

    public String getId() {
        return id;
    }

    public int getOldPrice() {
        return oldPrice;
    }

    public int getCurPrice() {
        return curPrice;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setOldPrice(int oldPrice) {
        this.oldPrice = oldPrice;
    }

    public void setCurPrice(int curPrice) {
        this.curPrice = curPrice;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    


    @Override
    public String toString() {
        return "name: "+ name + "imgae" + image;//To change body of generated methods, choose Tools | Templates.
    }
    
}
