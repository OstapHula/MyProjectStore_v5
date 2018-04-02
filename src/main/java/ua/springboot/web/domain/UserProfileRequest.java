package ua.springboot.web.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import ua.springboot.web.entity.enumeration.UserRole;

@Getter
@Setter
@NoArgsConstructor
public class UserProfileRequest {
    
    	private int id;
    	private String email;
	private String firstName;
	private String lastName;
	private String address;
	private String telephone;
	private Date birthday;
	private String ImagePath;
	private UserRole role;
	private String isActivated;
    
}
