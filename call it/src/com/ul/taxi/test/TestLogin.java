package com.ul.taxi.test;

import com.ul.taxi.entity.User;
import com.ul.taxi.service.loginservice;

import java.sql.SQLException;
import static org.junit.Assert.assertEquals;
import org.junit.Test;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SONY
 */
public class TestLogin {
    
	@Test
    
    public void test() throws ClassNotFoundException,SQLException{
        //Create objects of User and LoginService
    	
        loginservice loginService = new loginservice();
        User user = new User();
        //Test the success case by passing the correct username and password 
        user.setUsername("kiran");
        user.setPassword("123");
        String test = loginService.authenticate(user);
        //The user authentication should pass and return SUCCESS
        assertEquals("FALSE",test); 
        System.out.println("------------------");
        
        //Test the failure case by p[assing incorrect values for username and password
        user.setUsername("varsha");
        user.setPassword("xxx");
        test = loginService.authenticate(user);
        //Since the authentication fails it should return FALSE
        assertEquals("FALSE",test);
        
        
    }
}
