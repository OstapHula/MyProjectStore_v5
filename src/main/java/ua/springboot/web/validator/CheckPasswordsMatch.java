package ua.springboot.web.validator;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Target(value = ElementType.TYPE)
@Retention(value = RetentionPolicy.RUNTIME)
@Constraint(validatedBy = CheckPasswordsMatchValidator.class)
public @interface CheckPasswordsMatch {

	String message() default "Entered passwords not match";
	Class<?>[] groups() default{};
	Class<? extends Payload>[] payload() default {};
}
