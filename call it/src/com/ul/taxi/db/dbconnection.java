/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.db;
       import java.sql.*;

/**
 *
 * @author SONY
 */
public class dbconnection {
    	private static Connection connection = null;
        public static Connection createConnection() throws ClassNotFoundException,
			SQLException {   
            
            Class.forName("com.mysql.jdbc.Driver");
            connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/taxitest","root","molly");
            System.out.println("connection: "+connection);
            return connection;        
}
}