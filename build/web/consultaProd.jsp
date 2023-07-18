<%-- 
    Document   : consultaProd
    Created on : 18/07/2023, 08:31:36 AM
    Author     : Yair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Producto</title>
    </head>
    <body>
        <h1>Consultar un producto</h1>
        <form action="Consulta" method="POST">
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
            </table>
            <input type="reset" name="" value="Borrar" />
            <input type="submit" name="" value="Consultar" />
        </form>
        <form action="index.jsp" method="POST">
            <input type="submit" name="" value="Regresar" />
        </form>
    </body>
</html>
