<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String titulo = "Agregar un nuevo usuario", usuario = "";
    int id = 0;

    if (request.getParameter("id") != null) {

        id = Integer.parseInt(request.getParameter("id"));
        titulo = "Modificar datos del Usuario";

        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {

            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", ""); //Conexion a la BD
            stmt = conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuario=?");

            stmt.setInt(1, id);

            rs = stmt.executeQuery();

            rs.next();

            usuario = rs.getString("usuario");

        } catch (Exception e) {

            out.println("<br><br>" + e.getMessage());

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
        <!-- <br><h3 style="color: darkorange; text-align: center"></%out.println(titulo);%></h3><br> quitar diagonal de %out para mostrar el titulo --> 

        <div class="container">

            <%
                if (request.getParameter("id") == null) {
            %>
            <form action="agregarUsuario.jsp" method="post" style="text-align: center">

                <div class="form-row">

                    <div class="col">
                        <input type="text" value="<%=usuario%>" class="form-control" placeholder="Nombre" name="usuario" required>
                    </div>
                    <div class="col">
                        <input type="password" class="form-control" placeholder="Contraseña" name="password" required>
                    </div>
                    <div class="col">
                        <input  type="submit" class="btn btn-success bt-block" value="Agregar">
                    </div>

                </div> 
            </form>
            <%
            } else {
            %>
            <form action="editarUsuario.jsp" method="post" style="text-align: center">
                <div class="form-row">

                    <!--  <input type="hidden" name="id" value="<out.print(id);%>" /> <!--Necesitamos pasar los datos  -->

                    <div class="col">
                        <input type="text" value="<%=usuario%>" class="form-control" placeholder="Nombre" name="usuario" required>
                    </div>
                    <div class="col">
                        <input  type="submit" class="btn btn-success bt-block" value="Editar">
                    </div>
                </div>
            </form>
            <%
                }
            %>
        </div>

        <br><br>
        <table style="margin: 0 auto">
            <tr>
                <td><a  href="index.jsp" class="btn btn-primary btn-block">Regresar al menu</a></td>
            </tr>
        </table>

    </body>
</html>
