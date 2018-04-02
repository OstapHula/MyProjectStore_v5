package ua.springboot.web.service;

import ua.springboot.web.domain.mail.Mail;

public interface EmailService {

	void sendMessage(Mail mail);
	
}
