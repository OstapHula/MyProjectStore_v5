package ua.springboot.web.domain;

import java.math.BigDecimal;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import ua.springboot.web.entity.enumeration.FaseColor;
import ua.springboot.web.entity.enumeration.FaseType;
import ua.springboot.web.entity.enumeration.MaterialBody;
import ua.springboot.web.entity.enumeration.MaterialStrap;
import ua.springboot.web.entity.enumeration.ProductStyle;

@NoArgsConstructor
@Getter
@Setter
public class CreateProductRequest {
    
        @NotEmpty private String name;
        @NotEmpty private BigDecimal price;
        @NotEmpty private String description;
        private MultipartFile productImage;
        private ProductStyle style;
        private MaterialStrap materialStrap;
        private MaterialBody materialBody;
	private FaseType faseType;
	private FaseColor faseColor;
	private int weight;
	private int waterproof;
	private String glass;
	private int widthStrap;
	private int diametrBody;
	private int thicknessBody;
    
}
