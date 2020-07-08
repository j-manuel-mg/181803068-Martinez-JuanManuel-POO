<%@page import="com.google.protobuf.Internal.ListAdapter"%>
<%@page import="java.util.List"%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="Dao.Usuario"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String titulo = "Agregar un nuevo usuario";
    String action = "agregarUsuario.jsp";
    String boton = "Agregar Usuario";

    int id = 0;
    int edad = 0;
    String usuario = "";

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));

        titulo = "Editar Usuario";
        action = "editarUsuario.jsp";
        boton = "Editar Nombre y Edad";

        List<Usuario> usuarioId = new UsuarioBD().buscarUsuario(id);

        for (Usuario i : usuarioId) {
            edad = i.getEdad();
            usuario = i.getUsuario();
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Usuario</title>
    </head>
    <body>
        
        <br><h3 style="color: darkorange; text-align: center"><%=titulo%></h3><br>
        
        <div class="container">
            
            <form action="<%=action%>" method="get" style="text-align: center">
                
                <%if (id != 0) {%>
                
                <div class="col">
                    <input type="hidden" value="<%=id%>" class="form-control" name="id_usuario" readonly>
                </div>
                
                <%}%>
                
                <div class="col">
                    <input type="text" value="<%=usuario%>" class="form-control" placeholder="Nombre" name="usuario" required>
                </div>
                
                <br>
                
                <%if (edad == 0) {%>
                
                <div class="col">
                    <input type="number" class="form-control" placeholder="Edad" name="edad" required>
                </div>
                
                <%} else {%>
                
                <div class="col">
                    <input type="number" value="<%=edad%>"  class="form-control" placeholder="Edad" name="edad" required>
                </div>
                
                <%}%>
                
                <br>
                
                <%if (id == 0) {%>
                
                <div class="col">
                    <input type="password" class="form-control" placeholder="Contraseña" name="password" required>
                </div>
                
                <%}%>
                
                <br>
                
                <div class="col">
                    <input type="submit" class="btn btn-success btn-block"   value="<%=boton%>">
                </div>
                
                <br>
                
                <div class="col">
                    <a href="index.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
                </div>
                
            </form>
        </div>
    </body>
</html>
