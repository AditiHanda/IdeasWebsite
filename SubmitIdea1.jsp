<%-- 
    Document   : SubmitIdea1
    Created on : Feb 5, 2019, 10:25:02 PM
    Author     : Rishabh
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
                String name=request.getParameter("nm");
                String title=request.getParameter("title");
                String description=request.getParameter("description");
                String tech=request.getParameter("tech");           
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();       
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=LallyInfosys;Database=MyIdeas;user=log2;Password=123");
            Statement stmt=con.createStatement();
            String query="insert into SubmitIdea values ('"+name+"','"+title+"','"+description+"','"+tech+"')";
            stmt.execute(query);
            response.sendRedirect("index.jsp");
            %> 
    </body>
</html>
