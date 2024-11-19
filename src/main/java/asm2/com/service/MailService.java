package asm2.com.service;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import asm2.com.entity.MailDTO;

@Service
public class MailService {

	@Autowired
    private JavaMailSender mailSender;

    public void sendMail(MailDTO mailDTO) throws MessagingException, IOException {
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

        // Đặt người gửi là email từ người dùng nhập vào form
        String fromEmail = mailDTO.getFrom();  // Đây là email mà người gửi nhập vào form (ví dụ: vuphuongnam1129@gmail.com)
        
        // Đặt "from" là email người gửi, không cần tên cố định
        helper.setFrom(mailDTO.getFrom(), mailDTO.getFrom());

        // Đặt người nhận
        helper.setTo(mailDTO.getTo());

        // Đặt chủ đề
        helper.setSubject(mailDTO.getSubject());

        // Đặt nội dung email
        helper.setText(mailDTO.getBody(), true);

        // Thêm tệp đính kèm nếu có
        if (mailDTO.getAttachments() != null) {
            for (MultipartFile file : mailDTO.getAttachments()) {
                helper.addAttachment(file.getOriginalFilename(), file);
            }
        }

        // Gửi email
        mailSender.send(mimeMessage);
    }
}
