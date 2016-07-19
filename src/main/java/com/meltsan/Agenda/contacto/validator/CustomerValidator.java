/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.meltsan.Agenda.contacto.validator;

/**
 *
 * @author Meltsan
 */
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.meltsan.Agenda.contacto.model.Customer;

public class CustomerValidator implements Validator{

	public boolean supports(Class clazz) {
		//just validate the Customer instances
		return Customer.class.isAssignableFrom(clazz);

	}

	public void validate(Object target, Errors errors) {
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName",
				"required.userName", "El campo Nombre de Usuario es Necesario.");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userPhone",
				"required.userPhone", "El campo telefono  es Necesario.");
		
                ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userEmail",
				"required.userEmail", "El campo correo de Usuario es Necesario.");
		
                ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userBirthday",
				"required.userBirthday", "La fecha de nacimiento es Necesaria.");                
                
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address",
				"required.address", "El campo direccion es Necesarios.");
		
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sex", 
				"required.sex", "El campo sexo es Necesarios.");		
		
		Customer cust = (Customer)target;				

		if("NONE".equals(cust.getCountry())){
			errors.rejectValue("country", "required.country");
		}
		
	}
	
}
