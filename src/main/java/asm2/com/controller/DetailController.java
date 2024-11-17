package asm2.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import asm2.com.dao.CommentDAO;
import asm2.com.entity.Category;
import asm2.com.entity.Comment;
import asm2.com.entity.Product;

import asm2.com.entity.Size;
import asm2.com.service.CategoryService;
import asm2.com.service.CommentService;

import asm2.com.service.ProductService;
import asm2.com.service.SizeService;


@Controller
public class DetailController {
	@Autowired
	CategoryService category;
	@Autowired
	ProductService service;
	@Autowired
	SizeService size1;
	
	@Autowired
	CommentService comment;
	@Autowired
	CommentDAO commentdao;

	@RequestMapping("detail/{id}")
	public String id(Model model, @PathVariable("id") Integer id) {

		Product product = service.getById(id);
		model.addAttribute("product", product);
		Size size = size1.getByProductId(id);
		model.addAttribute("size", size);
	
		

		Comment comt = comment.getByProductId(id);
		model.addAttribute("comment", comt);

		return "detail";
	}

	@ModelAttribute("cates")
	public List<Category> getCategories() {
		return category.findALL();
	}

}
