/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.meltsan.Agenda.contacto.controller;

/**
 *
 * @author Meltsan
 */
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.meltsan.Agenda.contacto.model.Customer;
import com.meltsan.Agenda.contacto.validator.CustomerValidator;

@Controller
@RequestMapping("/registro.htm")
public class CustomerController{
	
	CustomerValidator customerValidator;
	
	@Autowired
	public CustomerController(CustomerValidator customerValidator){
		this.customerValidator = customerValidator;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String processSubmit(
			@ModelAttribute("customer") Customer customer,
			BindingResult result, SessionStatus status) {
		
		customerValidator.validate(customer, result);
		
		if (result.hasErrors()) {
			//if validator failed
			return "CustomerForm";
		} else {
			status.setComplete();
			//form success
			return "CustomerSuccess";
		}
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String initForm(ModelMap model){
		
		Customer cust = new Customer();
		//Make "Spring MVC" as default checked value		
		
		//Make "Make" as default radio button selected value
		cust.setSex("H");
		
		//make "Hibernate" as the default java skills selection
		cust.setJavaSkills("Hibernate");
		
		//initilize a hidden value
		cust.setSecretValue("I'm hidden value");
		
		//command object
		model.addAttribute("customer", cust);
		
		//return form view
		return "CustomerForm";
	}
		
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
		
	}	
	

	@ModelAttribute("countryList")
	public Map<String,String> populateCountryList() {
		
		//Data referencing for java skills list box
		Map<String,String> country = new LinkedHashMap<String,String>();
                country.put("MX", "Mexico");
		country.put("US", "United Stated");
		country.put("CHINA", "China");
		country.put("SG", "Singapore");			
		return country;
	}
	
}