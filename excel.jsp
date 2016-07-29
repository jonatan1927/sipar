<%-- 
    Document   : registrousuarios
    Created on : 13/02/2015, 09:46:15 PM
    Author     : jonatan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Dtos.MovimientoDTO"%>
<%@page contentType="application/vnd.ms-excel" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>
    <body >                                          <%
         HttpSession miSesion = request.getSession(false);
            if(miSesion.getAttribute("mdto")==null){
                response.sendRedirect("index.jsp");
            }else{
                    HttpSession repor=request.getSession(true);
        ArrayList<MovimientoDTO> movete= (ArrayList<MovimientoDTO>)repor.getAttribute("mdto");
           
                %> 
              
        <br><br>
        <table style="border: 1px solid black">
            <tr style="border: 1px solid black">
            <th>Placa</th>
            <th>Puesto</th>
            <th>Hora de entrada</th>
            <th>Hora de salida</th>
            <th>Valor a pagar</th></tr>
                <%   String nombreArchivo = "informe.xls";
                    response.setHeader("Content-Disposition", "attachment; filename=\"" + nombreArchivo + "\"");
        for(int I =0;I<movete.size();I++ ){ %>
        <tr style="border: 1px solid black">
            <td><%=movete.get(I).getPla()%> </td>
            <td><%=movete.get(I).getPu()%> </td>
            <td><%=movete.get(I).getHoraEntrada() %> </td>
            <td><%=movete.get(I).getHoraSalida() %> </td>
            <td><%=movete.get(I).getMonto() %> </td>
        </tr>
               
     
          <% }}%>
                 
      </table>   
    </body>
</html>
