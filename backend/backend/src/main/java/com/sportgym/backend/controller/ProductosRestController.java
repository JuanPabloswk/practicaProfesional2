package com.sportgym.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.sportgym.backend.entity.Productos;
import com.sportgym.backend.service.ProductosService;

@RestController
@RequestMapping("/api")

public class ProductosRestController {

    @Autowired
    private ProductosService productosService;

    @GetMapping("/PRODUCTOS")
    public List<Productos> findAll(){

        return productosService.findAll();

    }

    @GetMapping("/PRODUCTOS/{PRODUCTOId}")
    public Productos getProductos(@PathVariable int productosId){
        Productos productos = productosService.findById(productosId);

        if(productos == null) {
            throw new RuntimeException("Productos id not found-"+productosId);
        }

        return productos;

    }

    @PostMapping("/PRODUCTOS")
    public Productos addProductos(@RequestBody Productos productos) {

        productos.setId(0);

        productosService.save(productos);

        return productos;

    }

    @PutMapping("/PRODUCTOS")
    public Productos updateProductos(@RequestBody Productos productos) {

        productosService.save(productos);

        return productos;
    }

    @DeleteMapping("Productos/{Id}")
    public String deleteProductos(@PathVariable int productosId) {

        Productos productos = productosService.findById(productosId);

        if(productos == null) {
            throw new RuntimeException("Productos id not fiund-"+productosId);
        }

        productosService.deleteById(productosId);

        return "Delete user id-"+productosId;
    }


}
