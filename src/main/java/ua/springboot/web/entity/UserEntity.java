package ua.springboot.web.entity;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Index;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import ua.springboot.web.entity.enumeration.UserRole;

@Entity
@Table(name = "user", indexes = @Index(columnList = "email"))
@NoArgsConstructor
@Getter @Setter
public class UserEntity extends BaseEntity {
	
	private String email;
	private String password;
	
	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;
	private String address;
	private String telephone;
	private Date birthday;
	
	@Column(name = "image_path")
	private String imagePath;
	
	@Enumerated(EnumType.STRING)
	private UserRole role;
	private String token;
	
	@Column(name = "is_activated")
	private String isActivated = "0";
	
	@OneToMany(mappedBy = "user", cascade = { CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST,CascadeType.REFRESH })
	private List<OrderEntity> orders = new ArrayList<>();
	
	
}
