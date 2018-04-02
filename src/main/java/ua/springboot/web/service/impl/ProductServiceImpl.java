package ua.springboot.web.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.springboot.web.entity.ProductEntity;
import ua.springboot.web.repository.ProductRepository;
import ua.springboot.web.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductRepository repository;
    
    @Override
    public void saveProduct(ProductEntity entity) {
	repository.save(entity);
    }

    @Override
    public ProductEntity findProductById(int id) {
	return repository.findOne(id);
    }

    @Override
    public ProductEntity findProductByName(String name) {
	return repository.findProductByName(name);
    }

    @Override
    public ProductEntity findProductByPrice(BigDecimal price) {
	return repository.findProductByPrice(price);
    }

    @Override
    public List<ProductEntity> findAllProducts() {
	return repository.findAll();
    }

}
