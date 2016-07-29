<%-- 
    Document   : tarifas
    Created on : 2/03/2015, 12:20:19 AM
    Author     : jonatan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tarifas</h1>
        <form action="tarifa">
            <label>Tarifa por minutos</label>
            <input name="tarifaminuto" placeholder="tarifa por minutos">
            <label>Tarifa por mes</label>
            <input name="tarifames" placeholder="tarifa por mes">
            <button>Definir tarifas</button>
        </form>
    </body>
</html>
