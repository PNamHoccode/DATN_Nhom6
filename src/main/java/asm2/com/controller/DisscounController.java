package asm2.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import asm2.com.entity.DiscountCode;
import asm2.com.service.DisscountService;
@Controller
public class DisscounController {
	@Autowired
	DisscountService disscountService;
	 @GetMapping("/discounts")
	    public String showDiscounts(Model model) {
	        List<DiscountCode> discounts = disscountService. getAllDiscountCodes(); // Giả sử bạn có DiscountService
	        model.addAttribute("discounts", discounts);
	        return "discounts"; // Trả về view discounts.html
	    }
}
