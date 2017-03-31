<%-- 
    Document   : cadAluno
    Created on : 30/03/2017, 21:30:09
    Author     : Laboratorio
--%>

<%@page import="modelo.Aluno"%>
<%@page import="servlets.AddAlunoServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Aluno</title>
    </head>
    <body>
        <h1>Novo aluno</h1>
        <form action="addAluno" method="POST">
            Nome: <input type="text" name="nome"/><br>
            Idade: <input type="text" name="idade"/><br>
            Matricula: <input type="text" name="matricula"/><br>
            Curso: <input type="text" name="curso"/><br>
            <input type="submit" value="Adicionar"/>
        </form>
        
        <table>
            <tr>
            <td>ID</td>
            <td>Nome</td>
            <td>Idade</td>
            <td>Curso</td>
            <td>Matricula</td>
            <td>Ações</td>
            </tr>
                <%
                    int id =0;
                    for(Aluno a : AddAlunoServlet.listAluno){
                %>
            <tr>
                <td><%=id %></td>
                <td><%=a.getNome() %></td>
                <td><%=a.getIdade() %></td>
                <td><%=a.getCurso() %></td>
                <td><%=a.getMatricula() %>"></td>
                <td><a href="addAluno?remover=<%=id %>">Exluir</a></td>
            </tr>
                <%
                    id++;
                }
                %>
        </table>
    </body>
</html>
