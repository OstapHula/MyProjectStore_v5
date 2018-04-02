package ua.springboot.web.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import ua.springboot.web.domain.mail.Mail;
import ua.springboot.web.entity.UserEntity;
import ua.springboot.web.repository.UserRepository;
import ua.springboot.web.service.EmailService;
import ua.springboot.web.service.UserService;
import ua.springboot.web.service.utils.CustomFileUtils;
import ua.springboot.web.service.utils.TokenGenerator;

@Service
@Slf4j
public class UserServiceImpl implements UserService {

	private UserRepository userRepository;
	private PasswordEncoder passwordEncoder;
	private EmailService emailServce;
	
	@Autowired
	public UserServiceImpl(UserRepository userRepository,PasswordEncoder passwordEncoder, EmailService emailServce) {
	    this.userRepository = userRepository;
	    this.passwordEncoder = passwordEncoder;
	    this.emailServce = emailServce;
	}
	
	@Override
	@Transactional
	public void saveUser(UserEntity entity) {
		String methodName = "saveUser";
		log.debug("Start " + methodName);
		
		String password = entity.getPassword();
		log.debug("Entered password: " + password);
		entity.setPassword(passwordEncoder.encode(password));
		log.debug("encoded password: " + entity.getPassword());
		
		String token = TokenGenerator.generate(60);
		entity.setToken(token);
		entity.setIsActivated("0");
		
		userRepository.save(entity);
		
		log.debug("End " + methodName);
		CustomFileUtils.createFolder("user_" + entity.getId());
		sendEmail(token, entity);
	}
	
	private void sendEmail(String token, UserEntity entity) {
	    final String domain = "http://localhost:8080";
	    Mail mail = new Mail();
	    mail.setTo(entity.getEmail());
	    mail.setSubject("You are succsesfully registered!");
	    mail.setContent(
		    "Please verify your email by this link: "
		    + domain + "/verify?token=" + token +
		    "&userid=" + entity.getId()
		    );
	    emailServce.sendMessage(mail);
	}
	
	@Override
	public void updateUser(UserEntity entity) {
		userRepository.save(entity);
	}

	@Override
	public UserEntity findUserById(int id) {
		return userRepository.findOne(id);
	}

	@Override
	public UserEntity findUserByEmail(String email) {
		System.out.println("ServiceImpl: " + email);
		return userRepository.findUserByEmail(email);
	}

	@Override
	public List<UserEntity> findAllUsers() {
	    	return userRepository.findAll();
	}

	@Override
	public void deleteUserById(int id) {
	    	userRepository.delete(id);
	}

	
}
