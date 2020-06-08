
<%@page import="javax.naming.CommunicationException"%>
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
            table {
                width:100%;
            }
            table, th, td {
                border: 1px solid black;
            }
            th{
                padding: 15px;
                text-align: center;
            }
            td {
                font-family: sans-serif;
                padding: 15px;
                text-align: left;
            }
            table#t01 tr:nth-child(even) {
                background-color: #eee;
            }
            table#t01 tr:nth-child(odd) {
                background-color: #fff;
            }
            table#t01 th {
                background-color: #ca6212;
                color: white;
            }
            table#t02 tr:nth-child(even) {
                background-color: #eee;
            }
            table#t02 tr:nth-child(odd) {
                background-color: #fff;
            }
            table#t02 th {
                background-color: #ca6212;
                color: white;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD Consolas de Videojuegos</title>
    </head>
    <body>
        <h3 style="color: darkred; text-align: center ">CRUD consolas de videojuegos</h3>

        <table style="width:100%" id="t01">
            <caption>CRUD consolas de videojuegos</caption>
            <tr>

                <th>id_consola</th>
                <th>Plataforma</th> 
                <th>Modelo</th>
                <th>Almacenamiento</th>
                <th>Color</th>
                <th>Precio</th>
                <th>Marca</th>
            </tr>
            <%
                try {

                    Class.forName("com.mysql.jdbc.Driver");
                    conexion = DriverManager.getConnection("jdbc:mysql://localhost/consolas", "root", "");
                    stmt = conexion.createStatement();
                    rs = stmt.executeQuery("SELECT "
                            + " consola.id_consola, "
                            + " consola.plataforma, "
                            + " consola.modelo, "
                            + " consola.almacenamiento, "
                            + " consola.color, "
                            + " consola.precio, "
                            + " cat_marca.marca "
                            + " FROM consola "
                            + " JOIN cat_marca ON consola.id_marca = cat_marca.id_marca");
                    while (rs.next()) {
            %>
            <tr>
                <td><%out.println(rs.getInt(1));%></td>

                <td><%out.println(rs.getString(2));%></td>

                <td><%out.println(rs.getString(3));%></td>

                <td><%out.println(rs.getString(4));%></td>

                <td><%out.println(rs.getString(5));%></td>

                <td><%out.println(rs.getString(6));%></td>

                <td><%out.println(rs.getString(2));%></td>

            </tr>
            <%}%>
        </table>

        <%

            } catch (SQLSyntaxErrorException e) { //Excepcion de la tabla o base de datos

                out.println(e);

                out.println("<br><br>");

                out.println(e.getMessage());

                out.println("Error en la base de datos o una tabla no encontrado");

            } catch (Exception e) {

                System.out.println("Error: " + e);

            }
        %>

        <h3 style="color: darkred; text-align: center ">Catalogo consolas de videojuegos</h3>

        <table style="width:100%" id="t02">
            <caption>Catalogo consolas de videojuegos</caption>
            <tr>
                <th>id_marca</th>
                <th>Marca</th> 
            </tr>
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conexion = DriverManager.getConnection("jdbc:mysql://localhost/consolas", "root", "");
                    stmt = conexion.createStatement();
                    rs = stmt.executeQuery("Select * from cat_marca");
                    while (rs.next()) {
            %>
            <tr>
                <td><%out.println(rs.getInt(1));%></td>
                <td><%out.println(rs.getString(2));%></td>
            </tr>
            <%}%>
        </table>

        <%

            } catch (SQLSyntaxErrorException e) { //Excepcion de la tabla o base de datos

                out.println(e);

                out.println("<br><br>");

                out.println(e.getMessage());

                out.println("Error en la base de datos o una tabla no encontrado");

            } catch (Exception e) {

                System.out.println("Error: " + e);

            }
        %>
    </body>
</html>