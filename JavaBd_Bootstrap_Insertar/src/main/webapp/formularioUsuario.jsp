
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Usuario</title>
    </head>
    <body>

        <div class="container">
            <br><h3 style="color: darkorange; text-align: center">Agregar un nuevo usuario</h3><br>
            <form action="agregarUsuario.jsp" method="post" style="text-align: center">
                <div class="form-row">
                    <div class="col">
                        <input type="text" class="form-control" placeholder="Nombre" name="usuario" required>
                    </div>

                    <div class="col">
                        <input type="password" class="form-control" placeholder="Contraseña" name="password" required>
                    </div>

                    <div class="col">
                        <input  type="submit" class="btn btn-success bt-block" value="Enviar">
                    </div>

                </div>

            </form>
        </div>

        <br><br>

        <form action="index.jsp">
            <input type="submit" value="Regresar" class="btn btn-primary btn-block">
        </form>
    </body>
</html>
