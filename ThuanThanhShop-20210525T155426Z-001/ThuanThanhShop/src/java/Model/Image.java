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
public class Image {
    private int id;
    private String img1, img2, img3, img4, img5, img6;

    public Image() {
    }

    public Image(int id, String img1, String img2, String img3, String img4, String img5, String img6) {
        this.id = id;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
        this.img4 = img4;
        this.img5 = img5;
        this.img6 = img6;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }

    public void setImg4(String img4) {
        this.img4 = img4;
    }

    public void setImg5(String img5) {
        this.img5 = img5;
    }

    public void setImg6(String img6) {
        this.img6 = img6;
    }

    public int getId() {
        return id;
    }

    public String getImg1() {
        return img1;
    }

    public String getImg2() {
        return img2;
    }

    public String getImg3() {
        return img3;
    }

    public String getImg4() {
        return img4;
    }

    public String getImg5() {
        return img5;
    }

    public String getImg6() {
        return img6;
    }

    @Override
    public String toString() {
        return "image 1" + img1 + "image 2" + img2; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
