
<%@page import="java.util.List"%>
<%@page import="Dao.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    int id = 0;
    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
    }
%>

<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Eliminar</title>
    </head>
    <body>

        <br><br>

        <div class="col">
            <div class="alert alert-danger alert-block" style="text-align: center">
                ¿Seguro que quiere eliminar el usuario?
            </div>
        </div>

        <form action="eliminarUsuario.jsp" method="post" style="text-align: center">

            <div class="col">
                <input type="hidden" value="<%=id%>" class="form-control" name="id_usuario" readonly>
            </div>

            <div class="col">
                <input type="submit" class="btn btn-success btn-block" value="Eliminar"/>
                <a class="btn btn-danger btn-block" href="index.jsp">Cancelar</a>
            </div>

        </form>

    </body>
</html>
