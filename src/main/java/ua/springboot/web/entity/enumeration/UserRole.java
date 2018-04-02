package ua.springboot.web.entity.enumeration;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum UserRole {

    ROLE_ADMIN("Admin"), ROLE_USER("User");
    
    private String role;
    
    
}
