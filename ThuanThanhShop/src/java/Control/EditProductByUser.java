/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hoang Anh
 */
@WebServlet(name = "EditProductByUser", urlPatterns = {"/EditProductByUser"})
public class EditProductByUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        DAO dao = new DAO();
        String id = request.getParameter("id");
        String img = request.getParameter("image");
        String name = request.getParameter("name");
        String type = request.getParameter("type");

        String label = "Không";
        String to = "Huyện Ba Vì, Hà Nội";
        String material = request.getParameter("material");
        String from = request.getParameter("from");;
        int oldPrice = Integer.parseInt(request.getParameter("oldPrice"));  
        int curPrice = Integer.parseInt(request.getParameter("curPrice"));
        if(curPrice < oldPrice)
            label = "Giảm";
        
        int per = curPrice/oldPrice;
            
        int available = Integer.parseInt(request.getParameter("available"));
        
//        int total = dao.getTotalOfUser(userSell);
        
//        total = total + available;
        String description = request.getParameter("description");
        
                
        
        dao.UpdateProductByUser(img, name, type, label, material, from, oldPrice, curPrice, per, available, description, id);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
