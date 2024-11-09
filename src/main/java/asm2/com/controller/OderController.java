package asm2.com.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;

import asm2.com.entity.Comment;
import asm2.com.entity.Order;
import asm2.com.entity.Size;
import asm2.com.entity.Statust;
import asm2.com.service.OrderService;
import asm2.com.service.StatustService;

@Controller
public class OderController {
	@Autowired
	OrderService orderService;
	@Autowired
	StatustService statustService;

	@RequestMapping("/order/checkout")
	public String checkout() {
		return "order/checkout";
	}
	
	
	@RequestMapping("/order/list")
	public String list(Model model, HttpServletRequest request) {
		String username = request.getRemoteUser();
		model.addAttribute("order", orderService.findByUsername(username));
		return "order/list";
	}

	@RequestMapping("/order/detail/{id}")
	public String detail(@PathVariable("id") Long id,Model model) {
		model.addAttribute("order", orderService.findById(id));
		
		return "order/detail";
	}
}
