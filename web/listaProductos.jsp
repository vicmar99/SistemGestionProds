<%-- 
    Document   : listaProductos
    Created on : 18/07/2023, 08:47:08 AM
    Author     : Yair
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Todos los productos</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>Clave</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ArrayList<Producto> productos = null;
                    productos = (ArrayList<Producto>) request.getAttribute("Productos");
                %> 
                <%
                    for (Producto producto : productos) {
                %>
                <tr valign="rigth">
                    <td><%=producto.getClave()%></td>
                    <td><%=producto.getNombre()%></td>
                    <td><%=producto.getPrecio()%></td>
                    <td><%=producto.getCantidad()%></td> 
                </tr>

                <% }%>
            </tbody>
        </table>
            <form action="index.jsp" method="POST">
                 <input type="submit" value="Volver">
            </form>    

</body>
</html>
