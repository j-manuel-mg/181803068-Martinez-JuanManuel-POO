
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1 style="color: darkorange">Hallar diferencia en dias entre las dos fecha considerando que febrero tiene 28 dias.</h1>

        <form method="post">

            <h3>Fecha Inicial</h3>

            <label>Dia: </label>
            <input type="number" name="diaFecha1" min="1" max="31" required><br><br>

            <label>Mes: </label>
            <input type="number" name="mesFecha1" min="1" max="12" required><br><br>

            <label>Año: </label>
            <input type="number" name="yearFecha1" min="0000" max="9999" required><br><br>

            <h3>Fecha Final</h3>

            <label>Dia: </label>
            <input type="number" name="diaFecha2" min="1" max="31" required><br><br>

            <label>Mes: </label>
            <input type="number" name="mesFecha2" min="1" max="12" required><br><br>

            <label>Año: </label>
            <input type="number" name="yearFecha2" min="0000" max="9999" required><br><br>

            <input type="submit" value="Calcular">

        </form>

        <%
            if (request.getParameter("diaFecha1") != null) {

                int dia1 = Integer.parseInt(request.getParameter("diaFecha1"));
                int mes1 = Integer.parseInt(request.getParameter("mesFecha1"));
                int año1 = Integer.parseInt(request.getParameter("yearFecha1"));

                int dia2 = Integer.parseInt(request.getParameter("diaFecha2"));
                int mes2 = Integer.parseInt(request.getParameter("mesFecha2"));
                int año2 = Integer.parseInt(request.getParameter("yearFecha2"));

                if ((mes1 == 2) && (dia1 > 28)) {

                    out.println("<br>Fecha Inicial");
                    out.println("<br><br>Solo puedes asignar a mes de febrero 28 dias");

                } else if ((mes2 == 2) && (dia2 > 28)) {

                    out.println("<br>Fecha Final");
                    out.println("<br><br>Solo puedes asignar a mes de febrero 28 dias");

                } else if ((mes1 == 4 || mes1 == 6 || mes1 == 9 || mes1 == 11) && (dia1 > 30)) {

                    out.println("<br>Fecha Inicial");
                    out.println("<br><br>El mes: " + mes1 + " solo tiene 30 dias");

                } else if ((mes2 == 4 || mes2 == 6 || mes2 == 9 || mes2 == 11) && (dia2 > 30)) {

                    out.println("<br>Fecha Final");
                    out.println("<br><br>El mes: " + mes2 + " solo tiene 30 dias");

                } else {

                    out.println("<br>Fecha Inicial: " + dia1 + " / " + mes1 + " / " + año1);
                    out.println("<br><br>Fecha Final: " + dia2 + " / " + mes2 + " / " + año2);

                    int dias = 0, diasMeses = 0, diasAños = 0;

                    if (mes1 > mes2 && año1 < año2) {
                        for (int i = mes1; i <= 12; i++) {

                            if (i == 4 || i == 6 || i == 9 || i == 11) {
                                diasMeses += 30;

                            } else if (i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12) {
                                diasMeses += 31;

                            } else if (i == 2) {
                                diasMeses += 28;
                            }
                        }
                    }

                    if (mes1 > mes2 && año1 < año2) {

                        for (int i = 1; i < mes2; i++) {

                            if (i == 4 || i == 6 || i == 9 || i == 11) {
                                diasMeses += 30;

                            } else if (i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12) {
                                diasMeses += 31;

                            } else if (i == 2) {
                                diasMeses += 28;
                            }
                        }
                        if (año2 - año1 >= 2) {
                            diasAños = año1 - año2;
                            diasAños += 1;
                            diasAños = Math.abs(diasAños);
                        }
                        if (dia1 < dia2) {
                            dias = dia2 - dia1;
                            dias = Math.abs(dias);
                        }
                        
                    }

                    if (mes1 > mes2 && año1 > año2) {

                        for (int i = mes2; i <= mes1; i++) {

                            if (i == 4 || i == 6 || i == 9 || i == 11) {
                                diasMeses += 30;

                            } else if (i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12) {
                                diasMeses += 31;

                            } else if (i == 2) {
                                diasMeses += 28;
                            }
                        }
                        if (año1 - año2 >= 2) {
                            diasAños = año1 - año2;
                            diasAños = Math.abs(diasAños);
                        }
                        if (dia1 < dia2) {
                            dias = dia2 - dia1;
                            dias = Math.abs(dias);
                        }

                    }

                    if (mes1 > mes2 && año1 == año2) {
                        for (int i = mes2; i < mes1; i++) {

                            if (i == 4 || i == 6 || i == 9 || i == 11) {
                                diasMeses += 30;

                            } else if (i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12) {
                                diasMeses += 31;

                            } else if (i == 2) {
                                diasMeses += 28;
                            }
                        }

                    }

                    if (mes1 < mes2 && año1 > año2) {
                        for (int i = mes2; i <= 12; i++) {

                            if (i == 4 || i == 6 || i == 9 || i == 11) {
                                diasMeses += 30;

                            }

                            if (i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12) {
                                diasMeses += 31;

                            }

                            if (i == 2) {
                                diasMeses += 28;
                            }
                        }

                    }

                    if (mes1 < mes2 && año1 > año2) {
                        for (int i = 1; i < mes1; i++) {

                            if (i == 4 || i == 6 || i == 9 || i == 11) {
                                diasMeses += 30;

                            }

                            if (i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12) {
                                diasMeses += 31;

                            }

                            if (i == 2) {
                                diasMeses += 28;
                            }
                        }
                        if (año1 - año2 >= 2) {
                            diasAños = año1 - año2;
                            diasAños = Math.abs(diasAños);
                        }
                        dias = dia2 - dia1;
                        dias = Math.abs(dias);

                    }

                    if (mes1 < mes2 && año1 < año2) {
                        for (int i = mes1; i < mes2; i++) {

                            if (i == 4 || i == 6 || i == 9 || i == 11) {
                                diasMeses += 30;

                            }

                            if (i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12) {
                                diasMeses += 31;

                            }

                            if (i == 2) {
                                diasMeses += 28;
                            }
                        }

                        if (año2 - año1 >= 2) {
                            diasAños = año2 - año1;
                            diasAños = Math.abs(diasAños);
                        }

                    }

                    out.println("<br><br>Dias: " + dias);

                    diasMeses = Math.abs(diasMeses);
                    out.println("<br><br>Meses: " + diasMeses + " en dias");

                    diasAños *= 365;

                    out.println("<br><br>Años: " + diasAños + " en dias");
                    out.println("<br><br>----- El total de dias son: " + (diasMeses + dias + diasAños) + " dias -----");

                }

            } else {

                out.println("<br><br>No se ha establecido las fechas");

            }
        %>

    </body>
</html>