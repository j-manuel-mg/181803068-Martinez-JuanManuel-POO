
<%@page import="Dao.Usuario"%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="Configuracion.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    boolean executeUpdate;
    UsuarioBD usuario = new UsuarioBD();
    executeUpdate = usuario.editarUsuario(new Usuario(request.getParameter("usuario"), Integer.valueOf(request.getParameter("edad")), Integer.valueOf(request.getParameter("id_usuario"))));
%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
    </head>
    <body>

        <%
            if (executeUpdate) { //Compara si el executeUpdate fue exitoso
        %>
        <br>
        <br>

        <div class="col">
            <div class="alert alert-success" role="alert">
                Usuario Modificado exitosamente de la Base de Datos
            </div>
        </div>

        <%
        } else { //Si no muestra un mensaje de error
        %>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                El usuario no se modifico correctamente
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
