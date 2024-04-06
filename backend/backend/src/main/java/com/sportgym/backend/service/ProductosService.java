package com.sportgym.backend.service;

import java.util.List;

import com.sportgym.backend.entity.Productos;

public interface ProductosService {

    public List<Productos> findAll();

    public Productos findById(int idProductos);

    public void save(Productos productos);

    public void deleteById(int idProductos);


}
