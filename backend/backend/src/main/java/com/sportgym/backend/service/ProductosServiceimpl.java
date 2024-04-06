package com.sportgym.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sportgym.backend.dao.ProductosDAO;
import com.sportgym.backend.entity.Productos;

@Service
public class ProductosServiceimpl implements ProductosService {

    @Autowired
    private ProductosDAO productosDAO;

    @Override
    public List<Productos> findAll() {
        List<Productos> listProductos = productosDAO.findAll();
        return listProductos;
    }

    @Override
    public Productos findById(int idProductos) {
        Productos productos = productosDAO.findById(idProductos);
        return productos;
    }

    @Override
    public void save(Productos productos) {
        productosDAO.save(productos);
    }

    @Override
    public void deleteById(int idProductos) {
        productosDAO.deleteById(idProductos);
    }

}
