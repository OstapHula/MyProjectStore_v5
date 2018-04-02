package ua.springboot.web.controller;


import java.io.IOException;
import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ua.springboot.web.domain.EditUserRequest;
import ua.springboot.web.entity.UserEntity;
import ua.springboot.web.mapper.UserMapper;
import ua.springboot.web.service.UserService;
import ua.springboot.web.service.utils.CustomFileUtils;

@Controller
@RequestMapping({"/user", "/admin"})
@SessionAttributes("editUserModel")
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @GetMapping
    @PreAuthorize("hasAnyRole('ADMIN', 'USER')")
    public String showUserProfile(Model model, Principal principal) throws IOException{
	UserEntity entity = userService.findUserByEmail(principal.getName());
	if(entity == null) return "redirect:/";
	
	System.out.println("Image path: " + entity.getImagePath());
	entity.setImagePath(CustomFileUtils.getImage("user_" + entity.getId(), entity.getImagePath()));
	
	model.addAttribute("title", entity.getRole().getRole() + " profile");
	model.addAttribute("userProfile", UserMapper.entityUserToUserRequest(entity));
	return "user/profile";
    }
        
    @GetMapping("/edit")
    public String editUserProfile(Model model, Principal principal){
	UserEntity entity = userService.findUserByEmail(principal.getName());	
	EditUserRequest request = UserMapper.entityUserToEditRequest(entity);
	
	model.addAttribute("title", "Edit profile page");
	model.addAttribute("editUserModel", request);
	return "user/edit";
    }
    
    @PostMapping("/edit")
    public String saveEditedProfile(@ModelAttribute ("editUserModel") EditUserRequest request) throws IOException{
	UserEntity entity = UserMapper.editRequestToUserEntity(request);
	userService.updateUser(entity);
	
	//CustomFileUtils.createFolder("user_" + entity.getId());
	CustomFileUtils.createImage("user_" + entity.getId(), request.getFile());
	return "redirect:/user";
    }
    
    @GetMapping("/users")
    @PreAuthorize("hasAnyRole('ADMIN')")
    public String showListUsers(Model model) throws IOException{
	model.addAttribute("title", "List users page");
	List<UserEntity> users = userService.findAllUsers();
	for(UserEntity user : users){
	    user.setImagePath(CustomFileUtils.getImage("user_" + user.getId(), user.getImagePath()));
	}
	model.addAttribute("userListModel", users);
//	model.addAttribute("DeleteModel", new UserEntity());
	return "user/users";
    } 
    
//    @PostMapping("/users")
//    public String delateUser(@ModelAttribute ("DeleteModel") UserEntity user){
//	if(user.getId() != 1) userService.deleteUserById(user.getId());
//	return "redirect:/user/users";
//    }
    
}
