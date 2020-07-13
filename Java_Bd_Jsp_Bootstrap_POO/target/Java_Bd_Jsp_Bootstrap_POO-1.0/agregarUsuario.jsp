
<%@page import="Dao.*"%>
<%@page import="Configuracion.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    boolean executeUpdate;
    UsuarioBD usuario = new UsuarioBD();
    executeUpdate = usuario.agregarUsuario(new Usuario(request.getParameter("usuario"), Integer.parseInt(request.getParameter("edad")), request.getParameter("password")));
%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Usuario</title>
    </head>
    <body>
        <%
            if (executeUpdate) {
        %>
        <br>
        <br>
        <div class="col">
            <div class="alert alert-success" role="alert">
                Usuario agregado exitosamente a la Base de Datos
            </div>
        </div>
        <%
        } else {
        %>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                El usuario no se agrego correctamente a la Base de Datos
            </div>
        </div>
        <%
            }
        %>
        <br>
        <div class="col">
            <a  href="index.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
        </div>
    </body>
</html>