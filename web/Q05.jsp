<%-- 
    Document   : Q05
    Created on : 30/03/2017, 22:27:43
    Author     : Laboratorio
--%>

<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Questão 5</h1>
        
        <form action="Q05.jsp" method="post">
            Adicione um numero: <input type="text" name="n"/>
            <input type="submit" value="Adicionar no Vetor"/>
        </form>
        <%!
            int indice=0;
            int[] vetor = new int[10];
        %>
        
        <%
            
            if(request.getParameter("n") == null){
                out.println("objeto nulo");
            }else{
                String numero = request.getParameter("n");
                if(indice >= vetor.length)
                    out.println("O vetor já está cheio!");
                else if(!numero.equals("")){
                    vetor[indice] = Integer.valueOf(numero);
                    indice++;
                }
            }
            
            if(!(request.getParameter("ordenar")==null)){
                if(request.getParameter("ordenar").equals("1"))
                    Arrays.sort(vetor);
            }
            
                
        %>
        <a href="Q05.jsp?ordenar=1">Odenar</a>
        <table>
            <tr>
            <td>Indice</td>
            <td>Valor</td>
            </tr>
                <%
                    for(int i=0;i< vetor.length;i++){
                %>
            <tr>
                <td><%=i %></td>
                <td><%=vetor[i] %></td>
            </tr>
                <%
                }
                %>
        </table>
    </body>
</html>
