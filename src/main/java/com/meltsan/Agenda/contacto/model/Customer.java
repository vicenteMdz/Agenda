/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.meltsan.Agenda.contacto.model;

/**
 *
 * @author Meltsan
 */

public class Customer{
	
	//textbox
	String userName;
        
        //Phone
        String userPhone;
        
        //Email
        String userEmail;
        
        //Birthday date        
        String userBirthday;
	
	//textarea
	String address;        
	
	//radio button
	String favNumber;
	String sex;
	
	//dropdown box
	String country;
	String javaSkills;
	
	//hidden value
	String secretValue;
	
	public String getSecretValue() {
		return secretValue;
	}
	public void setSecretValue(String secretValue) {
		this.secretValue = secretValue;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
        
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
        public String getUserEmail() {
            return userEmail;
        }

        public void setUserEmail(String userEmail) {
            this.userEmail = userEmail;
        }

        public String getUserBirthday() {
            return userBirthday;
        }

        public void setUserBirthday(String userBirthday) {
            this.userBirthday = userBirthday;
        }        
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}       

	public String getFavNumber() {
		return favNumber;
	}
	public void setFavNumber(String favNumber) {
		this.favNumber = favNumber;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getJavaSkills() {
		return javaSkills;
	}
	public void setJavaSkills(String javaSkills) {
		this.javaSkills = javaSkills;
	}
}