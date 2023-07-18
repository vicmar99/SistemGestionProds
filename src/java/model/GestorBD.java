/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Yair
 */
public class GestorBD {

    Connection conn = null;
    Statement stm = null;
    ResultSet productResSet;
    Producto productHallado;
    int clav, cant;
    String nom;
    Double precio;

    public boolean registrar(int clave, String nombre, Double precio, int cant) {
        Connection conn = null;
        Statement stm;
        ResultSet rs;
        int resultUpdate = 0;
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            resultUpdate
                    = stm.executeUpdate("insert into productos values("
                            + clave + ",'" + nombre + "'," + precio + "," + cant + ");");
            if (resultUpdate != 0) {
                ConectaBD.cerrar();
                return true;
            } else {
                ConectaBD.cerrar();
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public ArrayList<Producto> leerTodos() {
        ArrayList<Producto> productos = new ArrayList<Producto>();
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            productResSet = stm.executeQuery("select * from productos");
            if (!productResSet.next()) {
                System.out.println(" No se encontraron registros");
                ConectaBD.cerrar();
                return null;
            } else {
                do {
                    clav = productResSet.getInt("clave");
                    nom = productResSet.getString("nombre");
                    precio = productResSet.getDouble("precio");
                    cant = productResSet.getInt("cantidad");
                    productHallado = new Producto(clav, nom, precio, cant);
                    productos.add(productHallado);
                } while (productResSet.next());
                ConectaBD.cerrar();
                return productos;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }

    public Producto consultar(int clave, String nombre) {
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            productResSet = stm.executeQuery("SELECT * FROM productos WHERE clave='" + clave
                    + "' and nombre='" + nombre + "'");
            if (!productResSet.next()) {
                System.out.println(" No se encontro el registro");
                ConectaBD.cerrar();
                return null;
            } else {
                System.out.println("Se encontró el registro");
                clav = productResSet.getInt("clave");
                nom = productResSet.getString("nombre");
                precio = productResSet.getDouble("precio");
                cant = productResSet.getInt("cantidad");
                productHallado = new Producto(clav, nom, precio, cant);

                ConectaBD.cerrar();
                return productHallado;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }

}
