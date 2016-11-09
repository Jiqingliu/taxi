/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;
import com.mvc.people.User;
import com.mvc.people.customertype;
import com.mvc.people.customertype.categoryinterface;
import com.mvc.people.student;
import com.mvc.people.userFactory;
import com.mvc.people.worker;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author SONY
 */
public class registerservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, Exception  
        {
                   
            }
        
      @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
      
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {                
                  //SingleObject object = SingleObject.getInstance();
   //     User user = User.getInstance(); 
String username,password,email,address,phno,category;
float discount = 0;
            username=request.getParameter("username");
                password=request.getParameter("password");
                email=request.getParameter("email");
                address=request.getParameter("address");
                phno=request.getParameter("phno");
                category=request.getParameter("category"); 
                
              
            //    userFactory uf=new userFactory();    
      // student us;
       //us = (student) uf.getuser(category);
       //worker ws=(worker) uf.getuser(category);
    categoryinterface ci=   userFactory.getuser(category);
    ci.setDiscount();
    discount=ci.getDiscount();
//    if(us!=null)
//       {         us.setDiscount();
//       discount=us.getDiscount();
//       }
//     else{
//          ws.setDiscount();
//          discount=ws.getDiscount();
//                   }
       User user=new User();
//User user = new User();
                user.setUsername(username);
                user.setPassword(password);
                user.setEmail(email);
                user.setAddress(address);
                user.setPhno(phno);
                      user.setCategory(category);
                user.setDiscount(discount);

       try {
           user.RegisterUser();
       } catch (SQLException ex) {
           Logger.getLogger(registerservlet.class.getName()).log(Level.SEVERE, null, ex);
       } catch (Exception ex) {
           Logger.getLogger(registerservlet.class.getName()).log(Level.SEVERE, null, ex);
       }
                response.sendRedirect("login.jsp");
        } 
}