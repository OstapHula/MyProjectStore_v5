package ua.springboot.web.service;

import java.util.List;

import ua.springboot.web.entity.UserEntity;

public interface UserService {

	void saveUser(UserEntity entity);
	
	void updateUser(UserEntity entity);
	
	UserEntity findUserById(int id);
	
	UserEntity findUserByEmail(String email);
	
	List<UserEntity> findAllUsers();
	
	void deleteUserById(int id);
}
