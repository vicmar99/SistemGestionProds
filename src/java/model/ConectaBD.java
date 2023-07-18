/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Yair
 */
public class ConectaBD {

    public static Connection con;
    private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=tienda";
    private static final String USER = "sa";
    private static final String PASSWORD = "123";

    public static Connection abrir() {
        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("conexión exitosa");
        } catch (Exception e) {
            System.out.println("Error en la conexion...");
            e.printStackTrace();
        }
        return con;
    }

    public static void cerrar() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (Exception e) {
            System.out.println("Error: No se logro cerrarconexion:\n" + e);
        }
    }

}
