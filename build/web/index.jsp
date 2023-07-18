<%-- 
    Document   : index
    Created on : 13/07/2023, 10:22:02 AM
    Author     : Yair
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
    </head>
    <body>         
        <h1>Sistema de gestión de productos</h1>
        <form action="Registro" method="POST">
            <table border="1">
                <tr>
                    <td>Clave:</td>
                    <td>
                        <input type="text" name="clave" value="" />
                    </td>
                </tr>
                <tr>
                   <td>Nombre:</td>
                    <td>
                        <input type="text" name="nombre" value="" />
                    </td>
                </tr>
                 <tr>
                   <td>Precio:</td>
                    <td>
                        <input type="text" name="precio" value="" />
                    </td>
                </tr>
                 <tr>
                   <td>Cantidad:</td>
                    <td>
                        <input type="text" name="cantidad" value="" />
                    </td>
                </tr>
            </table>
            <input type="reset" name="" value="Borrar" />
            <input type="submit" name="" value="Enviar" />
        </form>
        <form action="consultaProd.jsp" method="POST">
            <input type="submit" name="" value="Consultar" />
        </form>
        <form action="MuestraProducto" method="POST">
            <input type="submit" value="Ver Productos">
        </form>
    </body>
</html>
