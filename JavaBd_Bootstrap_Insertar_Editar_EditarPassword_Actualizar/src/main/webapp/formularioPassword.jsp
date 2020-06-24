
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Contraseña</title>
    </head>
    <body>

        <br><h3 style="color: darkorange; text-align: center">Editar Contraseña</h3><br>

        <div class="container">

            <form action="editarPassword.jsp" method="post">

                <div class="col">
                    <input type="hidden" value="<%=request.getParameter("id")%>" class="form-control" name="id" readonly>
                </div>
                
                <div class="col">
                    <label>Digite su contraseña actual</label>
                    <input type="password" class="form-control"  name="password" required>
                </div>

                <br><br>

                <div class="col">
                    <label>Digite su nueva contraseña</label>
                    <input type="password" class="form-control" name="password1" required>
                </div>

                <br><br>

                <div class="col">
                    <label>Confirme su contraseña</label>
                    <input type="password" class="form-control" name="password2" required>
                </div>

                <br><br>

                <div class="col">
                    <input type="submit" class="btn btn-success btn-block" value="Editar Contraseña">
                </div>

                <br>
                
                <div class="col">
                    <a  href="index.jsp" class="btn btn-primary btn-block">Regresar al menu</a>
                </div>
            </form>
        </div>

    </body>
</html>
