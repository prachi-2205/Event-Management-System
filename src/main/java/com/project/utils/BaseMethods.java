package com.project.utils;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Component;

@Component
public class BaseMethods {

	private String from = "eventmanagementsystem70@gmail.com";
	private String password = "EventMS12@#";

	public static String getUserName() {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		return userName;
	}

	public void sendMail(String subject, String messagetext, String recipient) {

		// Getting properties object
		Properties properties = new Properties();

		// setting smtp config
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		properties.put("mail.smtp.ssl.protocols", "TLSv1.2");

		// step:1 Get The Session
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});

		// step:2 compose the message
		try {
			MimeMessage message = new MimeMessage(session);

			// from email
			message.setFrom(new InternetAddress(from));

			// to email
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));

			// set subject
			message.setSubject(subject);

			// set content
			message.setContent(messagetext, "text/html");

			// step:3 send the message
			Transport.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
