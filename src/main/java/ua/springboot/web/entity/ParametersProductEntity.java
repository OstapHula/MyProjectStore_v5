package ua.springboot.web.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import ua.springboot.web.entity.enumeration.FaseColor;
import ua.springboot.web.entity.enumeration.FaseType;
import ua.springboot.web.entity.enumeration.MaterialBody;
import ua.springboot.web.entity.enumeration.MaterialStrap;
import ua.springboot.web.entity.enumeration.ProductStyle;

@Entity
@Table(name = "parameters_product")
@Getter
@Setter
@NoArgsConstructor
public class ParametersProductEntity extends BaseEntity {
	
	private ProductStyle style;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "material_strap")
	private MaterialStrap materialStrap;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "material_body")
	private MaterialBody materialBody;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "fase_type")
	private FaseType faseType;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "fase_color")
	private FaseColor faseColor;
	
	private int weight;
	private int waterproof;
	private String glass;
	
	@Column(name = "width_strap")
	private int widthStrap;
	
	@Column(name = "diametr_body")
	private int diametrBody;
	
	@Column(name = "thickness_body")
	private int thicknessBody;
	
	@OneToOne(mappedBy = "parameters", cascade = CascadeType.ALL)
	private ProductEntity product;
}
