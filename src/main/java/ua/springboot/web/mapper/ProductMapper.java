package ua.springboot.web.mapper;

import ua.springboot.web.domain.CreateProductRequest;
import ua.springboot.web.entity.ParametersProductEntity;
import ua.springboot.web.entity.ProductEntity;

public interface ProductMapper {
    
    public static ProductEntity ProductRequestToProductEntity(CreateProductRequest request){
	ParametersProductEntity parameters = new ParametersProductEntity();
	
	parameters.setStyle(request.getStyle());
	parameters.setMaterialStrap(request.getMaterialStrap());
	parameters.setMaterialBody(request.getMaterialBody());
	parameters.setFaseType(request.getFaseType());
	parameters.setFaseColor(request.getFaseColor());
	parameters.setWeight(request.getWeight());
	parameters.setWaterproof(request.getWaterproof());
	parameters.setGlass(request.getGlass());
	parameters.setWidthStrap(request.getWidthStrap());
	parameters.setDiametrBody(request.getDiametrBody());
	parameters.setThicknessBody(request.getThicknessBody());
	
	ProductEntity entity = new ProductEntity();
	entity.setName(request.getName());
	entity.setPrice(request.getPrice());
	entity.setDescription(request.getDescription());
	entity.setImagePath(request.getProductImage().getOriginalFilename());
	entity.setParameters(parameters);
	
	return entity;
    }
    
//    public static CreateProductRequest ProductEntityToProductRequest (ProductEntity entity){
//	CreateProductRequest request = new CreateProductRequest();
//	
//	request.setId(entity.getId());
//	
//	return request;
//    }
     
}
