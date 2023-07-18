<%-- 
    Document   : registroGuardado
    Created on : 18/07/2023, 08:13:12 AM
    Author     : Yair
--%>

<%@page import="model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Guardado</title>
    </head>
    <body>
        <%
            int clave = Integer.parseInt(request.getParameter("clave"));
            String nombre = request.getParameter("nombre");
            double precio = Double.parseDouble(request.getParameter("precio"));
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            
        %>

        <h3> MuestraRegistro.jsp</h3>

        <p> Se guardaron los siguientes datos: </p>

        <table cellspacing="3" cellpadding="3" border="1" >
            <tr>
                <td align="right"> Clave: </td>
                <td> <%= clave%> </td> 
            </tr> 
            <tr>
                <td align="right"> Nombre: </td>
                <td> <%= nombre%> </td> 
            </tr> 
            <tr>
                <td align="right"> precio: </td> 
                <td> <%= precio%> </td> 
            </tr>
            <tr>
                <td align="right"> Cantidad: </td> 
                <td> <%= cantidad%> </td> 
            </tr> 
        </table>

        <form action="index.jsp" method="post">
            <input type="submit" value="Regresar">
        </form>
    </body>
</html>
