<%-- 
    Document   : principal
    Created on : 23/02/2017, 23:35:06
    Author     : Laboratorio
--%>

<%@page import="java.util.Date"%>
<%@page import="javafx.scene.chart.PieChart.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Comentario-->
        <%--Comentario do jsp--%>
        <h1>Hello World!</h1>
        <%--DECLARAÇÃO--%>
        <%! 
            int contaVisitantes = 0;
        %>
        
        <%--SCRIPTLET --%>
        <jsp:scriptlet>
        </jsp:scriptlet>
        <%
            out.println("mais um jeito de código java<br>");
            out.println("Visitante: "+(++contaVisitantes));
        %>
        <%--EXPRESSION --%>
        <br>
        
        Data: <%= (new Date()).toInstant() %>
    </body>
</html>
