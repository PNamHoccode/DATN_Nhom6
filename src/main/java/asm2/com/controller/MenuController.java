package asm2.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {

	@RequestMapping("thongke")
	public String index() {

		return "Thongke/layout/menu.html";
	}

	@RequestMapping({ "/admin", "admin/home/index" })
	public String admin() {

		return "redirect:/admin/index.html";
	}

	@RequestMapping("/admin11")
	public String admin1() {

		return "/admin/product/index.html";
	}

	@RequestMapping("/quanlysanpham")
	public String sanpham() {
		return "Thongke/sanpham";
	}

	@RequestMapping("/quanlytheoloai")
	public String loai() {
		return "Thongke/loai";
	}

}
