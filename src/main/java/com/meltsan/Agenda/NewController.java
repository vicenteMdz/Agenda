package com.meltsan.Agenda;


import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewController {

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String prueba(Locale locale, Model model) {
		String var="variable declarada en el controller";
		model.addAttribute("var", var);
		return "new";
	}
	
}
