/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.service;

import com.ul.taxi.db.dbconnection;
import com.ul.taxi.entity.User;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author SONY
 */
public class loginservice {
    private Connection connection=null;
    private Statement statement=null;
    private ResultSet resultSet;

    public loginservice() {
        this.resultSet = null;
    }

//    public loginservice{
//        this.resultSet = null;
//    }

    /**
     *
     * @param u
     * @return
     * @throws java.lang.ClassNotFoundException
     */
    public String authenticate(User u) throws ClassNotFoundException,SQLException
 {
     String uname;
        uname = u.getUsername();
     String upass;
        upass = u.getPassword();
     String name,pass;
     String p="admin";
     String message;
     try 
            {      

    		
    	 connection= dbconnection.createConnection();
    	   statement = connection.createStatement(); 
    	//Statement is used to write queries. Read more about it.
    	 resultSet = statement.executeQuery("SELECT user_name,user_password from user_info"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
    	 
    	 
    	 while(resultSet.next()) // Until next row is present otherwise it return false
 {
  name = resultSet.getString("user_name"); //fetch the values present in database
  System.out.println("The name is :"+name);
  pass = resultSet.getString("user_password");
  System.out.println("The password is :"+pass);
 //User us=new User();
   if(uname.equals(name) && upass.equals(pass))
   {
        if(name.equals("admin"))
   {
       return "PINGO";
   }
        else{
           
               return "SUCCESS";
       }
   }
 }
     }          
 catch(SQLException e)
 {
 } // Just returning appropriate message otherwise
        return "FALSE";
 }
}

 