package asm2.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import asm2.com.service.AccountService;
import asm2.com.service.UserService;

@Controller
public class LoginController {

	
	@RequestMapping("/security/login/form")
	public String loginForm(Model model) {
		model.addAttribute("mesage","Login Please!");
		return "login/login";
	}
	
	
	@RequestMapping("/security/login/success")
	public String loginSuccess(Model model, HttpSession session) {
	    String username = (String) session.getAttribute("username");  // Lấy tên người dùng từ session
	    if (username != null) {
	        model.addAttribute("username", username);  // Truyền tên người dùng vào Model
	        model.addAttribute("greeting", "Xin chào, " + username + "!"); // Thêm thông điệp chào mừng
	    }

	    model.addAttribute("message", "Đăng nhập thành công!");
	    return "redirect:/index";  // Chuyển đến trang chính
	}

	
	
	@RequestMapping("/security/login/error")
	public String loginError(Model model) {
		model.addAttribute("mesage","Fail information login");
		return "login/login";
	}
	
	
	@RequestMapping("/security/unauthoried")
	public String unauthoried(Model model) {
		model.addAttribute("mesage","Không có quyền truy cập!");
		return "login/login";
	}
	
	@RequestMapping("/security/logoff/success")
	public String logoffsuccess(Model model) {
		model.addAttribute("mesage","bạn đã đăng xuất!");
		return "login/login";
	}
	
	@CrossOrigin("*")
	@ResponseBody
	@RequestMapping("/rest/security/authentication")
	public Object getAuthentication(HttpSession session) {
		return session.getAttribute("authentication");
	}
	
	
	
}
