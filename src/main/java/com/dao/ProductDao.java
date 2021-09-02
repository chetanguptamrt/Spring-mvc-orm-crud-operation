/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author chetan
 */
@Repository
public class ProductDao {
    
    @Autowired
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    
    @Transactional
    public void createProduct(Product product) {
        System.out.println(this.hibernateTemplate);
        this.hibernateTemplate.saveOrUpdate(product);
    }
    
    public List<Product> getAllProduct(){
        return this.hibernateTemplate.loadAll(Product.class);
    }
    
    public Product getProduct(int id){
        return this.hibernateTemplate.get(Product.class, id);
    }
    
    @Transactional
    public void deleteProduct(int id){
        Product p = this.hibernateTemplate.load(Product.class, id);
        this.hibernateTemplate.delete(p);
    }
    
}
