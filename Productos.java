package com.sportgym.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name="Productos")
public class Productos {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="idProductos")
    private int idProductos;

    @Column(name="nombre")
    private String nombre;

    @Column(name="descripcion")
    private String descripcion;

    @Column(name="precio")
    private int precio;

    @Column(name="contenido")
    private String contenido;

    @Column(name="cantidad")
    private int cantidad;

    @Column(name="tipo")
    private String tipo;

    public void setId(int idProductos) {
        this.idProductos = idProductos;
    }
}