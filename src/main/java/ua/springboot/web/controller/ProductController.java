package ua.springboot.web.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ua.springboot.web.domain.CreateProductRequest;
import ua.springboot.web.entity.ProductEntity;
import ua.springboot.web.entity.enumeration.FaseColor;
import ua.springboot.web.entity.enumeration.FaseType;
import ua.springboot.web.entity.enumeration.MaterialBody;
import ua.springboot.web.entity.enumeration.MaterialStrap;
import ua.springboot.web.entity.enumeration.ProductStyle;
import ua.springboot.web.mapper.ProductMapper;
import ua.springboot.web.service.ProductService;
import ua.springboot.web.service.utils.CustomFileUtils;

@Controller
@RequestMapping({"/product"})
public class ProductController {
    
    @Autowired private ProductService productService;
    
    @GetMapping("/product/{productId}")
    public String showProduct(@PathVariable("productId") int productId, Model model) throws IOException{
	ProductEntity product = productService.findProductById(productId);
	product.setImagePath(CustomFileUtils.getImage("product_" + product.getId(), product.getImagePath()));
	
	model.addAttribute("title", product.getName() + " page");
	model.addAttribute("productModel", product);
	return "product/product";
    }
    
    @GetMapping("/add-product")
    @PreAuthorize("hasAnyRole('ADMIN')")
    public String showCreateProduct(Model model){
	model.addAttribute("title", "Create new product");
	
	model.addAttribute("styleModel", ProductStyle.values());
	model.addAttribute("materialStrapModel", MaterialStrap.values());
	model.addAttribute("materialBodyModel", MaterialBody.values());
	model.addAttribute("FaseTypeModel", FaseType.values());
	model.addAttribute("FaseColorModel", FaseColor.values());
	
	model.addAttribute("productModel", new CreateProductRequest());
	return "product/add-product";
    }
    
    @PostMapping("/add-product")
    public String saveCreatedProduct(
	    @ModelAttribute("productModel") CreateProductRequest request
	    ) throws IOException{	
	ProductEntity entity = ProductMapper.ProductRequestToProductEntity(request);
	
	productService.saveProduct(entity);
	
	System.out.println("Id products: " + entity.getId());
	
	CustomFileUtils.createFolder("product_" + entity.getId());
	CustomFileUtils.createImage("product_" + entity.getId(), request.getProductImage());
	
	return "redirect:/product/product/" + entity.getId();
    }
}
