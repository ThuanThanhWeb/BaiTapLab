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
public class Product {
    private int id;
    private String img, name, type, react, label, to, material, from, description;
    private int oldPrice, curPrice , sold, per, available, proQnt, review;  
    private double rate, liked;

    public Product() {
    }

    public Product(int id, String img, String name, String type, String react, String label, String to, String material, String from, String description, int oldPrice, int curPrice, int sold, int per, int available, int proQnt, int review, double rate, double liked) {
        this.id = id;
        this.img = img;
        this.name = name;
        this.type = type;
        this.react = react;
        this.label = label;
        this.to = to;
        this.material = material;
        this.from = from;
        this.description = description;
        this.oldPrice = oldPrice;
        this.curPrice = curPrice;
        this.sold = sold;
        this.per = per;
        this.available = available;
        this.proQnt = proQnt;
        this.review = review;
        this.rate = rate;
        this.liked = liked;
    }

    public int getId() {
        return id;
    }

    public String getImg() {
        return img;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public String getReact() {
        return react;
    }

    public String getLabel() {
        return label;
    }

    public String getTo() {
        return to;
    }

    public String getMaterial() {
        return material;
    }

    public String getFrom() {
        return from;
    }

    public String getDescription() {
        return description;
    }

    public int getOldPrice() {
        return oldPrice;
    }

    public int getCurPrice() {
        return curPrice;
    }

    public int getSold() {
        return sold;
    }

    public int getPer() {
        return per;
    }

    public int getAvailable() {
        return available;
    }

    public int getProQnt() {
        return proQnt;
    }

    public int getReview() {
        return review;
    }

    public double getRate() {
        return rate;
    }

    public double getLiked() {
        return liked;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setReact(String react) {
        this.react = react;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setOldPrice(int oldPrice) {
        this.oldPrice = oldPrice;
    }

    public void setCurPrice(int curPrice) {
        this.curPrice = curPrice;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public void setPer(int per) {
        this.per = per;
    }

    public void setAvailable(int available) {
        this.available = available;
    }

    public void setProQnt(int proQnt) {
        this.proQnt = proQnt;
    }

    public void setReview(int review) {
        this.review = review;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public void setLiked(double liked) {
        this.liked = liked;
    }



    @Override
    public String toString() {
        return "id: "+id+" name"+name;
    }

    
  
}
