<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String titulo = "Agregar un nuevo usuario";
    String usuario = "";
    String action = "agregarUsuario.jsp";
    String boton = "Agregar Usuario";

    int id = 0;

    if (request.getParameter("id") != null) {

        id = Integer.parseInt(request.getParameter("id"));
        titulo = "Editar Usuario";
        action = "editarUsuario.jsp";
        boton = "Editar Nombre";

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

            <form action="<%=action%>" method="post" style="text-align: center">

                <%if (id != 0) {
                %>
                <div class="col">
                    <input type="hidden" value="<%=id%>" class="form-control" name="id_usuario" readonly>
                </div>
                <%
                    }
                %>
                <div class="col">
                    <input type="text" value="<%=usuario%>" class="form-control" placeholder="Nombre" name="usuario" required>
                </div>

                <br>

                <%if (id == 0) {
                %>
                <div class="col">
                    <input type="password" class="form-control" placeholder="Contraseña" name="password" required>
                </div>
                <%
                    }
                %>

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
