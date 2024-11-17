package asm2.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testdissoount {
	@RequestMapping("/test")
	public String inde() {
		return"test/index";
	}

}
