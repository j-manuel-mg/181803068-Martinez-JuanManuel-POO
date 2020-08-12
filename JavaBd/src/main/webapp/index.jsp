
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;
%>

<html>
    <head>
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Base de Datos Usuarios</title>
    </head>
    <body>

        <h3 style="color: darkorange; text-align: center">Registros de la Base de Datos Usuarios</h3>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
                stmt = conexion.createStatement();
                rs = stmt.executeQuery("Select * from usuario");
        %>

        <table style="width:50%;  margin: 0 auto"> <!--Reducir la tabla a la mitad y centrarla:  style="width:50%;  margin: 0 auto"-->
            <tr>
                <th>id_usuario</th>
                <th>Nombre</th> 
                <th>Contraseña</th>
            </tr>
            <%while (rs.next()) {%>
            <tr>
                <td><%out.println(rs.getString(1));%></td>
                <td><%out.println(rs.getString(2));%></td>
                <td><%out.println(rs.getString(3));%></td>
            </tr>
            <%}%>
        </table>
        <%
            } catch (SQLException e) {
                if (e.getErrorCode() == 0) {

                    System.out.println(e.getMessage());
                    out.println("<br><br>Error SQL: Nombre del host incorrecto");

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
    </body>
</html>
