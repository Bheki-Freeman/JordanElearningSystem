/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlets;

import databases.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

/**
 *
 * @author Freeman
 */
public class RegisterLectureServ extends HttpServlet {
    Connection conection;
    DBConnect conn = new DBConnect(conection, "jordan_institute", "Freeman", "PassFreeman18");

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
        try (PrintWriter out = response.getWriter()) {            
            registerLecture(conn, request, out, response);            
        }
    }
    
    public void registerLecture(DBConnect conn, HttpServletRequest request, PrintWriter out, HttpServletResponse response) throws IOException{
        try {            
            //
            int empid = Integer.parseInt(request.getParameter("lec_emp_id"));
            String name = request.getParameter("lec_name");
            String email = request.getParameter("lec_email");
            int phone = Integer.parseInt(request.getParameter("lec_phone"));
            String password = request.getParameter("lec_pass");
            String address = request.getParameter("lec_address");
            String faculty = request.getParameter("lec_faculty");
            String city = request.getParameter("lec_city");
            String state = request.getParameter("lec_state");
            String zip = request.getParameter("lec_zipcode");          
            
            
            // Insert details now
            String sql = "INSERT INTO lectures VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement pst = conn.getConnection().prepareStatement(sql);
            pst.setInt(1, empid);
            pst.setString(2, name);
            pst.setString(3, email);
            pst.setInt(4, phone);
            pst.setString(5, password);
            pst.setString(6, address);
            pst.setString(7, faculty);
            pst.setString(8, city);
            pst.setString(9, state);
            pst.setString(10, zip);
            
            pst.executeUpdate();
            System.out.println("Lecturer Inserted!");
            
            response.sendRedirect("lecture.jsp");
           
        } catch (SQLException ex) {
            Logger.getLogger(RegisterLectureServ.class.getName()).log(Level.SEVERE, null, ex);
        }
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
