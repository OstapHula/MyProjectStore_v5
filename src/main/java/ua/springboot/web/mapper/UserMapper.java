package ua.springboot.web.mapper;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import ua.springboot.web.domain.EditUserRequest;
import ua.springboot.web.domain.RegisterRequest;
import ua.springboot.web.domain.UserProfileRequest;
import ua.springboot.web.entity.UserEntity;
import ua.springboot.web.entity.enumeration.UserRole;

public interface UserMapper {

	public static User toSecurityUser(UserEntity entity) {
		return new User(entity.getEmail(), 
				entity.getPassword(), 
				AuthorityUtils.createAuthorityList(String.valueOf(entity.getRole())));
	}
	
	public static UserEntity registerRequestToUserEntity (RegisterRequest request){
		UserEntity entity = new UserEntity();
		
		entity.setFirstName(request.getFirstName());
		entity.setEmail(request.getEmail());
		entity.setPassword(request.getPassword());
		entity.setRole(UserRole.ROLE_USER);
		
		return entity;
	}

	public static UserProfileRequest entityUserToUserRequest(UserEntity entity){
	    UserProfileRequest request = new UserProfileRequest();
	    
	    request.setEmail(entity.getEmail());
	    request.setFirstName(entity.getFirstName());
	    request.setLastName(entity.getLastName());
	    request.setAddress(entity.getAddress());
	    request.setTelephone(entity.getTelephone());
	    request.setBirthday(entity.getBirthday());
	    request.setImagePath(entity.getImagePath());
	    request.setIsActivated(entity.getIsActivated());
	    request.setRole(entity.getRole());
	    
	    return request;
	}
	
	public static EditUserRequest entityUserToEditRequest(UserEntity entity){
	    EditUserRequest request = new EditUserRequest();
	    
	    request.setId(entity.getId());
	    request.setEmail(entity.getEmail());
	    request.setFirstName(entity.getFirstName());
	    request.setLastName(entity.getLastName());
	    request.setAddress(entity.getAddress());
	    request.setTelephone(entity.getTelephone());
	    request.setRole(entity.getRole());
	    request.setPassword(entity.getPassword());
	    
	    return request;
	}
	
	public static UserEntity editRequestToUserEntity(EditUserRequest request){
	    UserEntity entity = new UserEntity();
	    
	    entity.setId(request.getId());
	    entity.setEmail(request.getEmail());
	    entity.setFirstName(request.getFirstName());
	    entity.setLastName(request.getLastName());
	    entity.setAddress(request.getAddress());
	    entity.setTelephone(request.getTelephone());
	    entity.setImagePath(request.getFile().getOriginalFilename());
	    entity.setRole(request.getRole());
	    entity.setPassword(request.getPassword());
	    
	    return entity;
	}
}
