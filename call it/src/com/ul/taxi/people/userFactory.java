/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ul.taxi.people;

import com.ul.taxi.people.customertype.categoryinterface;

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