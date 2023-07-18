<%-- 
    Document   : resultadoConsulta
    Created on : 18/07/2023, 08:37:46 AM
    Author     : Yair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
        <%@ page import="model.Producto" %>
        <%
            Producto producto = (Producto) request.getAttribute("atribProd");
        %>

        <h1>Resultado de la consulta</h1>

        <table cellspacing="3" cellpadding="3" border="1" >
            <tr>
                <td align="right"> Clave: </td>
                <td> <%= producto.getClave()%> </td> 
            </tr> 
            <tr>
                <td align="right"> Nombre: </td>
                <td> <%= producto.getNombre()%> </td> 
            </tr> 
            <tr>
                <td align="right"> precio: </td> 
                <td> <%= producto.getPrecio()%> </td> 
            </tr>
            <tr>
                <td align="right"> Cantidad: </td> 
                <td> <%= producto.getCantidad()%> </td> 
            </tr> 
        </table>

        <form action="index.jsp" method="post">
            <input type="submit" value="Regresar">
        </form>
    </body>
</html>
