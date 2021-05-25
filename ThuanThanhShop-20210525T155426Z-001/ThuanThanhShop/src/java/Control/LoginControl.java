/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Dao.DAO;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hoang Anh
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

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
//        Cookie arr[] = request.getCookies();
//        for(Cookie o:arr){
//            if(o.getName().equals("userC"))
//                request.setAttribute("username", o.getValue());
//            if(o.getName().equals("passC"))
//                request.setAttribute("password", o.getValue());
//        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
        String username = request.getParameter("user");
        String pass = request.getParameter("password");
//        String remember = request.getParameter("remember");
        DAO dao = new DAO();
        Account ac = dao.login(username, pass);
        if(ac == null){
            request.setAttribute("mess", "Tài khoản hoặc mật khẩu không chính xác");
            request.setAttribute("user", username);
            request.setAttribute("pass", pass);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        else{
            HttpSession session = request.getSession();
            session.setAttribute("acc", ac);
            session.setMaxInactiveInterval(600);
            
//            request.getRequestDispatcher("home").forward(request, response);
//            Cookie u = new Cookie("userC", username);
//            Cookie p = new Cookie("passC", pass);
//            u.setMaxAge(2);
//            
//            if(remember!=null){           
//                p.setMaxAge(2);
//            }else{
//                p.setMaxAge(0);
//            }
//            response.addCookie(u);
//            response.addCookie(p);
            response.sendRedirect("home.jsp");
        }
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
