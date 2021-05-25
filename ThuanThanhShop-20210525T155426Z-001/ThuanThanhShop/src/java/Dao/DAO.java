/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Helper.DatabaseHelper;
import Model.Account;
import Model.CartProductInfo;
import Model.Category;
import Model.Image;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hoang Anh
 */
public class DAO {

    Connection con = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;

    public Account login(String user, String pass) {
        Account ac = null;
        String sql = "select * from Account\n"
                + "where [user] = ?\n"
                + "and pass = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);
            pstm.setString(2, pass);
            rs = pstm.executeQuery();
            if (rs.next()) {
                ac = new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4)
                );
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ac;
    }

    public Account checkAccountExist(String user) {
        Account ac = null;
        String sql = "select * from account where [user] = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);
            rs = pstm.executeQuery();
            if (rs.next()) {
                ac = new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4)
                );
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ac;
    }

    public void signup(String name, String user, String pass) {
        String sql = "insert into Account\n"
                + "values (?, ?, ?, 0)";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2, user);
            pstm.setString(3, pass);
            pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Product getProductByID(String id) {
        Product p = null;
        String sql = "select * from product where id = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                p = (new Product(rs.getInt("id"),
                        rs.getString("img"), rs.getString("name"), rs.getString("type"), rs.getString("react"), rs.getString("label"),
                        rs.getString("to"), rs.getString("material"), rs.getString("from"), rs.getString("description"),
                        rs.getInt("oldPrice"), rs.getInt("curPrice"), rs.getInt("sold"), rs.getInt("per"),
                        rs.getInt("available"), rs.getInt("proQnt"), rs.getInt("review"),
                        rs.getDouble("rate"), rs.getDouble("liked")));
            }
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    public Product getProductByUserAndId(String user, String id) {
        Product p = null;
        String sql = "select * from product where userSell = ? and id = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);
            pstm.setString(2, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                p = (new Product(rs.getInt("id"),
                        rs.getString("img"), rs.getString("name"), rs.getString("type"), rs.getString("react"), rs.getString("label"),
                        rs.getString("to"), rs.getString("material"), rs.getString("from"), rs.getString("description"),
                        rs.getInt("oldPrice"), rs.getInt("curPrice"), rs.getInt("sold"), rs.getInt("per"),
                        rs.getInt("available"), rs.getInt("proQnt"), rs.getInt("review"),
                        rs.getDouble("rate"), rs.getDouble("liked")));
            }
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    public Image getImageByID(String id) {
        Image p = null;
        String sql = "select * from image where id = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                p = (new Image(rs.getInt("id"),
                        rs.getString("img2"), rs.getString("img2"), rs.getString("img3"),
                        rs.getString("img4"), rs.getString("img5"), rs.getString("img6")));
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt("id"),
                        rs.getString("img"), rs.getString("name"), rs.getString("type"), rs.getString("react"), rs.getString("label"),
                        rs.getString("to"), rs.getString("material"), rs.getString("from"), rs.getString("description"),
                        rs.getInt("oldPrice"), rs.getInt("curPrice"), rs.getInt("sold"), rs.getInt("per"),
                        rs.getInt("available"), rs.getInt("proQnt"), rs.getInt("review"),
                        rs.getDouble("rate"), rs.getDouble("liked")));
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> get2ProductSoldest() {
        List<Product> list = new ArrayList<>();
        String sql = "select top 2 * from product order by sold desc";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);

            rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("id"),
                        rs.getString("img"), rs.getString("name"), rs.getString("type"), rs.getString("react"), rs.getString("label"),
                        rs.getString("to"), rs.getString("material"), rs.getString("from"), rs.getString("description"),
                        rs.getInt("oldPrice"), rs.getInt("curPrice"), rs.getInt("sold"), rs.getInt("per"),
                        rs.getInt("available"), rs.getInt("proQnt"), rs.getInt("review"),
                        rs.getDouble("rate"), rs.getDouble("liked")));
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> getAllProductByName(String name) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where name like ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, "%" + name + "%");
            rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("id"),
                        rs.getString("img"), rs.getString("name"), rs.getString("type"), rs.getString("react"), rs.getString("label"),
                        rs.getString("to"), rs.getString("material"), rs.getString("from"), rs.getString("description"),
                        rs.getInt("oldPrice"), rs.getInt("curPrice"), rs.getInt("sold"), rs.getInt("per"),
                        rs.getInt("available"), rs.getInt("proQnt"), rs.getInt("review"),
                        rs.getDouble("rate"), rs.getDouble("liked")));
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<CartProductInfo> getAllCartProduct(String name) {
        List<CartProductInfo> list = new ArrayList<>();
        String sql = "select p.id, name, [type], oldPrice, curPrice, p.img as image, available  from Product p\n"
                + "where userSell = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, name);
            rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new CartProductInfo(
                        rs.getString("name"), rs.getString("type"), rs.getString("image"), rs.getString("id"), rs.getInt("oldPrice"),
                        rs.getInt("curPrice"), rs.getInt("available")));
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<CartProductInfo> getAllCartProductByUser(String user) {
        List<CartProductInfo> list = new ArrayList<>();
        String sql = "select p.id, name, [type], oldPrice, curPrice, p.img as image, soLuong  from Product p, CartByUser c, Account a\n"
                + "where p.id = c.id_SP\n"
                + "and a.[user] = c.[user] and c.[user] = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);
            rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new CartProductInfo(
                        rs.getString("name"), rs.getString("type"), rs.getString("image"), rs.getString("id"), rs.getInt("oldPrice"),
                        rs.getInt("curPrice"), rs.getInt("soLuong")));
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void AddProductToCart(String user, String id, String qnt) {
        String sql = "insert into CartByUser\n"
                + "values (?, ?, ?)";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);
            pstm.setString(2, id);
            pstm.setString(3, qnt);

            pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean CheckAddProductToCard(String user, String id) {
        String sql = "select * from CartByUser\n"
                + "where [user] = ? and id_SP = ?";

        try {
            con = DatabaseHelper.openConnection();

            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);
            pstm.setString(2, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public void UpdateProductToCart(String user, String id, String qnt) {
        String sql = "update CartByUser\n"
                + "set SoLuong = ?\n"
                + "where [user] = ? and id_SP = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, qnt);
            pstm.setString(2, user);
            pstm.setString(3, id);

            pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void DeleteProductToCart(String user, String id) {
        String sql = "delete from CartByUser\n"
                + "where [user] = ? and id_SP = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);
            pstm.setString(2, id);

            pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void DeleteProductByUser(String user, String id) {
        String sql = "delete from product\n"
                + "where userSell = ? and id = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);
            pstm.setString(2, id);

            pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void DeleteAllProductToCart(String user) {
        String sql = "delete from CartByUser\n"
                + "where [user] = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, user);

            pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public void InsertProductByUser(String img,
             String name,
             String type,
             String react,
             String label,
             String to,
             String material,
             String from,
             int oldPrice,
             int curPrice,
             int sold,
             double rate,
             int per,
             double liked,
             int available,
             int proQnt,
             int review,
             String description,
             String userSell) {
        String sql = "INSERT INTO Product\n"
                + "values (?, ?, ?, ?, ?, ?, ?, ?, ?,  ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, img);
            pstm.setString(2, name);
            pstm.setString(3, type);
            pstm.setString(4, react);
            pstm.setString(5, label);
            pstm.setString(6, to);
            pstm.setString(7, material);
            pstm.setString(8, from);
            pstm.setInt(9, oldPrice);
            pstm.setInt(10, curPrice);
            pstm.setInt(11, sold);
            pstm.setDouble(12, rate);
            pstm.setInt(13, per);
            pstm.setDouble(14, liked);
            pstm.setInt(15, available);
            pstm.setInt(16, proQnt);
            pstm.setInt(17, review);
            pstm.setString(18, description);
            pstm.setString(19, userSell);

            pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void UpdateProductByUser(         
            String img,
             String name,
             String type,
             String label,
             String material,
             String from,           
             int oldPrice,
             int curPrice,
             int per,
             int available,
             String description,
             String id
    ) {
        String sql = "Update Product\n"
                + "set name = ?,\n"
                + "    img = ?,\n"
                + "	[type] = ?,\n"              
                + "	label = ?,\n"                
                + "	material = ?,\n"
                + "    [from] = ?,\n"
                + "    oldPrice = ?,\n"
                + "    curPrice = ?,\n"                           
                + "    per = ?,\n"               
                + "    available = ?,\n"                                
                + "	[description] = ?\n"
                + "where id = ?";
        try {
            con = DatabaseHelper.openConnection();
            pstm = con.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2, img);
            pstm.setString(3, type);
            pstm.setString(4, label);
            pstm.setString(5, material);        
            pstm.setString(6, from);          
            pstm.setInt(7, oldPrice);
            pstm.setInt(8, curPrice);
            pstm.setInt(9, per);
            pstm.setInt(10, available);
            pstm.setString(11, description);
            pstm.setString(12, id);

            pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
     public static void main(String[] args) throws Exception {
        DAO dao = new DAO();
        Product p = dao.getProductByID("1");
         System.out.println(p);
     }
     
}
