package ua.springboot.web.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ua.springboot.web.service.UserService;

@Component
public class CheckIfUserEmailExistsValidator implements ConstraintValidator<CheckIfUserEmailExists, String>{

    @Autowired private UserService userService;
    
    @Override
    public void initialize(CheckIfUserEmailExists arg0) {
	
    }

    @Override
    public boolean isValid(String mail, ConstraintValidatorContext context) {
	return userService.findUserByEmail(mail) != null ? false : true;
    }

}
