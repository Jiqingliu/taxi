/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi;

import com.ul.taxi.db.dbconnection;
import com.ul.taxi.entity.Order;
import com.ul.taxi.entity.driverdetails;
import com.ul.taxi.entity.taxi;
import com.ul.taxi.service.displayservice;
import com.ul.taxi.service.orderservice;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SONY
 */
public class orderservlet extends HttpServlet {
private Connection connection=null;
    private Statement statement=null;
    private ResultSet resultSet;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response, Object ex)
            throws ServletException, IOException {           
            String types=request.getParameter("types");
            String start=request.getParameter("start");
            String end=request.getParameter("end");
            String time=request.getParameter("time");
            String phno=request.getParameter("phno");
           //singleton design pattern for order 
            Order o = Order.getInstance();                
                     
            o.setTime(time);
            o.setTypes(types);
            o.setStart(start);
            o.setEnd(end); 
            o.setPhno(phno);
            HttpSession session = request.getSession();
String uid= session.getAttribute("userid").toString();
            orderservice os=new orderservice();
           {
                Logger.getLogger(orderservlet.class.getName()).log(Level.SEVERE, null, ex);
            }
       //     String taxino,drivername,driverno;
            taxi ti=new taxi();
  try{
      connection= dbconnection.createConnection();
  
   statement = connection.createStatement(); 
//Statement is used to write queries. Read more about it.
 resultSet = statement.executeQuery("SELECT taxino,drivername,driverno from taxi where taxitype='"+types+"' AND state='active' AND priority='1'"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
 while(resultSet.next()){ 
 String taxino = resultSet.getString("taxino"); //fetch the values present in database
 String drivername = resultSet.getString("drivername");
 String driverno=resultSet.getString("driverno");
ti.setDrivername(drivername);
ti.setTaxino(taxino);
ti.setDriverno(driverno);
ti.setTaxitype(types);
 }
//PrintWriter writer = response.getWriter();
//String htmlRespone = "<html>";
//htmlRespone += "<h2>Your username is: " + ti.getDrivername() + "<br/>";
//htmlRespone += "Your password is: " + ti.getTaxino() + "</h2>";
//htmlRespone += "</html>";
//writer.println(htmlRespone);
request.setAttribute("ti", ti);
request.getRequestDispatcher("simple.jsp").forward(request, response);
        } catch (SQLException ex1) {
            Logger.getLogger(orderservlet.class.getName()).log(Level.SEVERE, null, ex1);
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
