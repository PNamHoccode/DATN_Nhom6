package asm2.com.controller;

import java.io.IOException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import asm2.com.entity.MailDTO;
import asm2.com.service.MailService;

@Controller
public class MailController {

    @Autowired
    private MailService mailService;

    @GetMapping("/mail")
    public String showMailForm(Model model) {
        MailDTO mailDTO = new MailDTO();
        mailDTO.setTo("systemmanagementstoresport@gmail.com");  // Đặt người nhận trong form
        model.addAttribute("mail", mailDTO);
        return "mail";  // Trả về view "mail" (có form nhập từ, chủ đề, nội dung)
    }

    @PostMapping("/mail/send")
    public String sendMail(@ModelAttribute("mail") MailDTO mailDTO, Model model) {
        try {
            mailService.sendMail(mailDTO);  // Gửi email
            model.addAttribute("success", "Email sent successfully!");
        } catch (MessagingException | IOException e) {
            model.addAttribute("error", "Error while sending email: " + e.getMessage());
        }
        return "mail";  // Trở về trang form email
    }
}
