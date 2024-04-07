package com.sportgym.backend.dao;

import java.util.List;

import jakarta.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sportgym.backend.entity.Productos;

@Repository
public class ProductosDAOimpl implements ProductosDAO {

    @Autowired
    private EntityManager entityManager;

    @Override
    public List<Productos> findAll() {
        Session currentSession = entityManager.unwrap(Session.class);

        Query<Productos> theQuery = currentSession.createQuery("from Productos", Productos.class);

        List<Productos> productos = theQuery.getResultList();

        return productos;

    }

    @Override
    public Productos findById(int id) {
        Session currentSession = entityManager.unwrap(Session.class);

        Productos Productos = currentSession.get(Productos.class, id);

        return Productos;
    }

    @Override
    public void save(Productos productos) {
        Session currentSession = entityManager.unwrap(Session.class);

        currentSession.saveOrUpdate(productos);

    }

    @Override
    public void deleteById(int idProductos) {
        Session currentSession = entityManager.unwrap(Session.class);

        Query<Productos> theQuery = currentSession.createQuery("delete from Productos where id=:idProductos");

        theQuery.setParameter("idProductos", idProductos);
        theQuery.executeUpdate();

    }
}
