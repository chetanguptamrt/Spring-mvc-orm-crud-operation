/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.services;

import com.dao.ProductDao;
import com.model.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author chetan
 */
@Service
public class ProductService {
    
    @Autowired
    private ProductDao productDao;
    
    public void createProduct(Product product){
        this.productDao.createProduct(product);
    }
    
    public List<Product> getAllProduct(){
        return this.productDao.getAllProduct();
    }
    
    public void deleteProduct(int id){
        this.productDao.deleteProduct(id);
    }
    
    public Product getProduct(int id){
        return this.productDao.getProduct(id);
    }
    
}
