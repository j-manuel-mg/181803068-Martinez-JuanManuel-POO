
<%@page import="Dao.Usuario"%>
<%@page import="Dao.UsuarioBD"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Usuario> usuarios = new UsuarioBD().listadoUsuarios();
%>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Base de Datos Usuarios </title>
    </head>
    <body>

        <br><h3 style="color: darkorange; text-align: center">Registros de la Base de Datos Usuarios</h3><br>
        <div class="container">
            <table class="table table-hover">
                <thead class="thead-dark">
                    <tr>
                        <td style="text-align: center" colspan="4"><h4>Usuarios:</h4></td>
                        <td colspan="3"><a  href="formularioUsuario.jsp" class="btn btn-success btn-block"> Agregar Usuario </a></td>
                    </tr>
                    <tr>
                        <th>id_usuario</th>
                        <th>Nombre</th>
                        <th>Edad</th>
                        <th>Contraseña</th>
                        <th colspan="3" style="text-align: center">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Usuario usuario : usuarios) {
                    %>
                    <tr>
                        <th><%=usuario.getIdUsuario()%></th>
                        <td><%=usuario.getUsuario()%></td>
                        <td><%=usuario.getEdad()%></td>
                        <td><%=usuario.getPassword()%></td>
                        
                        <td> <a href="formularioUsuario.jsp?id=<%=usuario.getIdUsuario()%>" class="btn btn-warning btn-block" >Editar usuario</a></td>
                        <td> <a href="formularioPassword.jsp?id=<%=usuario.getIdUsuario()%>" class="btn btn-warning btn-block" >Editar contraseña</a></td>
                        <td> <a href="formularioEliminar.jsp?id=<%=usuario.getIdUsuario()%>" class="btn btn-danger btm-block">Eliminar el usuario</a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
