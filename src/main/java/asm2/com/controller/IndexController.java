package asm2.com.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asm2.com.entity.Category;
import asm2.com.entity.Product;
import asm2.com.service.CategoryService;
import asm2.com.service.ProductService;

@Controller
public class IndexController {
	@Autowired
	ProductService service;

	@Autowired
	CategoryService pca;

	@RequestMapping({ "/index", "", "detail/index" })
	public String trangchu(Model model, HttpSession session) {
	    // Kiểm tra nếu username có trong session để thêm vào Model
	    String username = (String) session.getAttribute("username");
	    if (username != null) {
	        model.addAttribute("username", username);
	        model.addAttribute("greeting", "Xin chào, " + username + "!");
	    }

	    // Truyền các category và sản phẩm vào model
	    List<Category> category = pca.findALL();
	    model.addAttribute("category", category);

	    List<Product> featuredProducts = service.findByDescriptionTrue();
	    model.addAttribute("products", featuredProducts);

	    List<Product> productsfalse = service.findByDescriptionFalse();
	    model.addAttribute("productsfalse", productsfalse);

	    return "index";  // Trở về trang index với dữ liệu đầy đủ
	}


}
