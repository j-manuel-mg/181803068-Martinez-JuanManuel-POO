
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Contraseña</title>
    </head>
    <body>

        <%
            String password;
            String password1;
            String password2;
            int id = 0;
            if (request.getParameter("id") != null && request.getParameter("password") != null) {
                id = Integer.parseInt(request.getParameter("id"));
                password = request.getParameter("password");

                Connection conexion = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;

                try {
                    conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ", "root", "");
                    stmt = conexion.prepareStatement("SELECT * FROM usuario WHERE id_usuario=? AND password=MD5(?)");
                    stmt.setInt(1, id);
                    stmt.setString(2, password);
                    rs = stmt.executeQuery();
                    if (rs.next() == true) {
                        if (request.getParameter("password1") != null && request.getParameter("password2") != null) {
                            password1 = request.getParameter("password1");
                            password2 = request.getParameter("password2");
                            if (password1.equals(password2)) {
        %>
        <br>
        <br>

        <div class="col">
            <div class="alert alert-info alert-block" style="text-align: center">
                ¿Seguro que quiere cambiar de contraseña?
            </div>
        </div>
        <form action="cambiarPassword.jsp" method="post">
            <div class="col">
                <!-- <label>ID del usuario</label> -->
                <input type="hidden" class="form-control" value="<%=id%>" name="id" readonly>
            </div>
            <div class="col">
                <!-- <label>Contaseña del usuario</label> -->
                <input type="hidden" class="form-control" value="<%=password1%>" name="password" readonly>
            </div>
            <div class="col">
                <input type="submit" class="btn btn-success btn-block"   value="Cambiar"/>
                <a class="btn btn-danger btn-block" href="index.jsp">Cancelar</a>
            </div>
        </form>
        <%
        } else {
        %>
        <br>
        <br>
        <div class="col">
            <div class="alert alert-danger alert-block" style="text-align: center">
                La contraseña y confirmacion de contraseña son incorrectas
            </div>
        </div>
        <div class="col">
            <a class="btn btn-primary btn-block" href="index.jsp">Regresar</a>
        </div>
        <%
                }
            }
        } else {
        %>
        <br>
        <br>
        <div class="col">
            <div class="alert alert-danger alert-block" style="text-align: center">
                Contraseña Actual incorrecta
            </div>
        </div>
        <div class="col">
            <a class="btn btn-primary btn-block" href="index.jsp">Regresar</a>
        </div>

        <%
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        %>
        <div class="col">
            <a class="btn btn-primary btn-block" href="index.jsp">Regresar</a>
        </div>
        <%
                }
            }
        %>
    </body>
</html>