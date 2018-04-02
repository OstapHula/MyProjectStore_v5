package ua.springboot.web.validator;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;


@Retention(RUNTIME)
@Target({METHOD, FIELD})
@Constraint(validatedBy = CheckIfUserEmailExistsValidator.class)
public @interface CheckIfUserEmailExists {
    
    String message() default "Entered email addres is already exists";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
