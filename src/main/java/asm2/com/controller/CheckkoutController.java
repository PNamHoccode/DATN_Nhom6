package asm2.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckkoutController {

	@RequestMapping("detail/checkout")	
	public String checkkout (Model model)
	{
		 
		   return "checkout";
	}
	
}
