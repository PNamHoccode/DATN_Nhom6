package asm2.com.entity;

import org.springframework.web.multipart.MultipartFile;

public class MailDTO {

    private String from; // Email người gửi
    private String to; // Email người nhận
    private String subject; // Chủ đề email
    private String body; // Nội dung email
    private MultipartFile[] attachments; // Các tệp đính kèm

    // Getters và Setters cho các trường trên

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public MultipartFile[] getAttachments() {
        return attachments;
    }

    public void setAttachments(MultipartFile[] attachments) {
        this.attachments = attachments;
    }
}
