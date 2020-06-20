
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
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
        
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
                stmt = conexion.prepareStatement("select * from usuario");
                rs = stmt.executeQuery();
        %>
        <div class="container">
            <table class="table table-hover"> <!--Reducir la tabla a la mitad y centrarla:  style="width:50%;  margin: 0 auto"-->
                <thead class="thead-dark">
                    <tr>
                        <td style="text-align: center"><h4>Usuarios:</h4></td>
                        <td colspan="2"><a  href="formularioUsuario.jsp" class="btn btn-success btn-block"> Agregar Usuario </a></td>
                    </tr>
                    <tr>
                        <th>id_usuario</th>
                        <th>Nombre</th> 
                        <th>Contraseña</th>
                    </tr>
                </thead>
                <tbody>
                    <%while (rs.next()) {%>
                    <tr>
                        <th><%out.println(rs.getInt("id_usuario"));%></th>
                        <td><%=rs.getString("usuario")%></td>
                        <td><%out.println(rs.getString("password"));%></td>
                        
                        <td> <a href="formularioUsuario.jsp?id=<%=rs.getInt("id_usuario")%>" class="btn btn-warning btn-block" >Editar el usuario</a></td>
                        <td> <a class="btn btn-danger btm-block" href="">Eliminar el usuario</a></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
<%
    } catch (SQLException e) {
        if (e.getErrorCode() == 0) {

            System.out.println(e.getMessage());
            out.println("<br><br>Error SQL: Error en el host");

        } else if (e.getErrorCode() == 1049) {

            out.println("<br><br>Error SQL: La base de datos no existe");

        } else if (e.getErrorCode() == 1045) {

            out.println("<br><br>Error SQL: Nombre de usuario o contraseña incorrecto");

        } else if (e.getErrorCode() == 1146) {

            out.println("<br><br>Error SQL: La tabla no existe");

        } else if (e.getErrorCode() == 1054) {

            out.println("<br><br>Error SQL: Error en la consulta");

        } else {
            out.println("Error: " + e.getMessage());
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());

    }
%>
