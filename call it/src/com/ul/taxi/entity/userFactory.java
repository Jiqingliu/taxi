/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.entity;

import com.ul.taxi.entity.customertype.categoryinterface;

/**
 *
 * @author SONY
 */
public class userFactory {
    public static categoryinterface getuser(String category){
      
    	if (category == "student"){
    		return new student();
       }
    	else{
    		return new worker();
    	}
    	
    
}
}