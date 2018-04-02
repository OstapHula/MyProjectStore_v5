package ua.springboot.web.service;

import java.math.BigDecimal;
import java.util.List;

import ua.springboot.web.entity.ProductEntity;

public interface ProductService {
    
    void saveProduct(ProductEntity entity);
    
    ProductEntity findProductById(int id);
    
    ProductEntity findProductByName(String name);
    
    ProductEntity findProductByPrice(BigDecimal price);
    
    List<ProductEntity> findAllProducts();
    
}
