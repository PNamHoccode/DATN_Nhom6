package asm2.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {

	
	@RequestMapping("/security/login/form")
	public String loginForm(Model model) {
		model.addAttribute("mesage","Login Please!");
		return "login/login";
	}
	
	
	@RequestMapping("/security/login/success")
	public String loginSuccess(Model model) {
		model.addAttribute("mesage","Đăng nhập thành công!");
		return "index";
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
