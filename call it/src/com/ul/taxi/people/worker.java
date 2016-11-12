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
public class worker implements categoryinterface{
//                public String username,password,email,address,phno,category;
//     public String getUsername() {
//        return username;
//    }
//
//    public void setUsername(String username) {
//        this.username = username;
//    }
//
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        this.password = password;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//
//    public String getAddress() {
//        return address;
//    }
//
//    public void setAddress(String address) {
//        this.address = address;
//    }
//
//    public String getPhno() {
//        return phno;
//    }
//
//    public void setPhno(String phno) {
//        this.phno = phno;
//    }
//     /**
//     * @return the category
//     */
//    public String getCategory() {
//        return category;
//    }
//
//    /**
//     * @param category the category to set
//     */
//    public void setCategory(String category) {
//        this.category = category;
//    }
    public float discount;
        /**
     * @return the discount
     */
    public float getDiscount() {
        return discount;
    }

    /**
     * @param discount the discount to set
     */
    public void setDiscount() {
        discount = (float) 0.1;
    }
}
