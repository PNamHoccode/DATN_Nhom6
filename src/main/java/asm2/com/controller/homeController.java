package asm2.com.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {
@RequestMapping("layout")
public String layout()
{
	 
	   return "share/layout";
}



}
