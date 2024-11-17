package asm2.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactControler {

	@RequestMapping("detail/contact")	
	public String shop (Model model)
	{
		 
		   return "contact";
	}
	
	
}
