<%-- 
    Document   : Numeracion
    Created on : 20 may. 2020, 18:57:57
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!--Titulo o nombre para el documento -->
        <title>Numeracion Java</title>
        
    </head>
    <body>
        
<!-- ------------------------------------------------------------------------------------------------------------------------ -->
        <!-- Codigo HTML -->
        
        <!--Cabecera importante en el documento -->
        <h1>Formulario que pida un número y que imprima en pantalla del 0 al número que haya colocado el cliente</h1>
        
        <!--El form elemento HTML define un formulario que se utiliza para recopilar la entrada del usuario: -->
        <form>
            <!--La etiqueta label define una etiqueta para muchos elementos de formulario. -->
            <label>Digite un numero: </label><br><!--br sire para dar un salto de linea -->
            
            <!--input: define un campo de entrada
                type: define el tipo de entarda que recibe, 
                required: hace que el dato sea requerido y no se pueda mandar
                name: asigna un nombre -->
            
            <!--input: entrada, type number: tipo numerico, required: requerido forzosamente, name: con nombre numero -->
            <input type="number" required name="numero">
            
            <!--input: entrada, type submit: tipo enviar, name: con nombre Mostrar -->
            <input type="submit" name="Mostrar">
        </form>
        
        <br><!--br sire para dar un salto de linea -->
        
<!-- ------------------------------------------------------------------------------------------------------------------------ -->
        <!-- Codigo Java-->
        
        <%
            //Le dice al usuario que numero digito concatenandolo
            out.println("Usted digito el numero: " + (request.getParameter("numero")));
        %>
        
<!-- ------------------------------------------------------------------------------------------------------------------------ --> 
        <!-- Codigo HTML-->
        
        <h4> Los numeros son: </h4>
        
<!-- ------------------------------------------------------------------------------------------------------------------------ --> 
        <!-- Codigo Java-->
        
        <%
            //Excepcion try (intentar)
            try{
                
                //Conversion del numero obtenido String a Integer(int)
                int n = Integer.parseInt(request.getParameter("numero"));
                
                //Ciclo que imprime los numeros que digita el usuario
                for (int i = 0; i <= n; i++) {
                        out.println(i);
                    }
            // cachar la exception NumberFormatException
            }catch(NumberFormatException nfs){
                out.println("No se ha digitado un numero");
            }
        %>     

    </body>
</html>
