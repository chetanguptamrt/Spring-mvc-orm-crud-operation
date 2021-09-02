/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Product;
import com.services.ProductService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author chetan
 */
@Controller
public class MainController {
    
    @Autowired
    private ProductService productService;
    
    @RequestMapping("/")
    public String homePage(Model model){
        model.addAttribute("title", "Home");
        List<Product> allProduct = this.productService.getAllProduct();
        model.addAttribute("products", allProduct);
        return "home";
    }
    
    @RequestMapping("/add")
    public String addProduct(Model model){
        model.addAttribute("title", "Add Product");
        return "add";
    }
    
    @RequestMapping(value = "/productAdd", method = RequestMethod.POST)
    public RedirectView handleProduct(@ModelAttribute Product product){
        RedirectView rv = new RedirectView();
        this.productService.createProduct(product);
        rv.setUrl("./");
        return rv;
    }
    
    @RequestMapping("/delete/{productId}")
    public RedirectView deleteHandler(@PathVariable int productId){
        this.productService.deleteProduct(productId);
        RedirectView rv = new RedirectView();
        rv.setUrl("../");
        return rv;
    }
    
    @RequestMapping("/update/{productId}")
    public String editHandler(@PathVariable int productId, Model model){
        Product product = this.productService.getProduct(productId);
        model.addAttribute("product", product);
        return "update";
    }
    
}
