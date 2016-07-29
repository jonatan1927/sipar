<%-- 
    Document   : reporte
    Created on : 2/03/2015, 12:23:10 AM
    Author     : jonatan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Dtos.MovimientoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <style type="text/css">    
            .pg-normal {
                color: black;
                font-weight: normal;
                text-decoration: none;    
                cursor: pointer;    
            }
            .pg-selected {
                color: black;
                font-weight: bold;        
                text-decoration: underline;
                cursor: pointer;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script type="text/javascript" src="paging.js"></script>
    </head>
    <body>
        <%
        HttpSession repor=request.getSession(true);
        ArrayList<MovimientoDTO> movete= (ArrayList<MovimientoDTO>)repor.getAttribute("mdto"); %>

                <form action="filtros"><label>placa</label><input name="fdos"/><label>puesto</label><input name="funo"/>
                    <button>seleccionar</button> <a href="excel.jsp">generar reporte</a>
                    <br><a href="logout.jsp">salir</a></form>
        <br><br>
        <form action="" method="get" enctype="application/x-www-form-urlencoded">
        <table id="results" style="border: 1px solid black" >
            <tr style="border: 1px solid black; background-color:red">
            <th style="border: 1px solid black">Placa</th>
            <th style="border: 1px solid black">Puesto</th>
            <th style="border: 1px solid black">Hora de entrada</th>
            <th style="border: 1px solid black">Hora de salida</th>
            <th style="border: 1px solid black">Valor a pagar</th></tr>
                <%       for(int I =0;I<movete.size();I++ ){%>
        <tr style="border: 1px solid black">
            <td style="border: 1px solid black"><%=movete.get(I).getPla()%> </td>
            <td style="border: 1px solid black"><%=movete.get(I).getPu()%> </td>
            <td style="border: 1px solid black"><%=movete.get(I).getHoraEntrada() %> </td>
            <td style="border: 1px solid black"><%=movete.get(I).getHoraSalida() %> </td>
            <td style="border: 1px solid black"><%=movete.get(I).getMonto() %> </td>
        </tr>
               
     
          <% }%>                 
      </table>
      <div id="pageNavPosition"></div>
        </form>
              <script type="text/javascript"><!--
        var pager = new Pager('results', 4); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    </body>
</html>
