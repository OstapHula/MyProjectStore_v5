package ua.springboot.web.domain;

import javax.validation.constraints.Pattern;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import org.hibernate.validator.constraints.NotEmpty;

import ua.springboot.web.validator.CheckIfUserEmailExists;
import ua.springboot.web.validator.CheckPasswordsMatch;

@NoArgsConstructor
@Getter @Setter
@CheckPasswordsMatch
public class RegisterRequest {
    	
    	@NotEmpty private String firstName;
	@Pattern(regexp = "[a-zA-Z].+[a-zA-Z0-9+.]+@[A-Za-z]{1,5}+.[A-Za-z]{2,4}$", message = "Typed email has not correct format")
	@CheckIfUserEmailExists
	@NotEmpty private String email;
	@NotEmpty private String password;
	@NotEmpty private String passwordConfirmation;
}
