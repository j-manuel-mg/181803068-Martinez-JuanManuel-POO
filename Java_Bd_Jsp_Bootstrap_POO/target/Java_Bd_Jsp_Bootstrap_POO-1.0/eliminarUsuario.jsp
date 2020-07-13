
<%@page import="Dao.UsuarioBD"%>
<%@page import="Dao.Usuario"%>
<%@page import="Configuracion.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Usuario</title>
    </head>
    <body>

        <%
            boolean executeUpdate;
            UsuarioBD usuario = new UsuarioBD();
            executeUpdate = usuario.eliminarUsuario(new Usuario(Integer.valueOf(request.getParameter("id_usuario"))));
            if (executeUpdate) {
        %>
        <br>
        <br>
        <div class="col">
            <div class="alert alert-success" role="alert">
                Usuario Eliminado exitosamente
            </div>
        </div>
        <%
        } else {
        %>
        <div class="col">
            <div class="alert alert-danger" role="alert">
                No se pudo No se pudo eliminar el usuario, intentelo de nuevo
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