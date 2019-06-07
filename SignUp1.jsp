<%-- 
    Document   : SignUp1
    Created on : Feb 5, 2019, 10:17:45 PM
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
                String name=request.getParameter("name");
                String user=request.getParameter("user");
                String pass=request.getParameter("pass");
                String email=request.getParameter("email");
                String mob=request.getParameter("mob");
                 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();       
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=LallyInfosys;Database=MyIdeas;user=log2;Password=123");
            Statement stmt=con.createStatement();
            String query="insert into Signup values ('"+name+"','"+user+"','"+pass+"','"+email+"','"+mob+"')";
            stmt.execute(query);
            response.sendRedirect("login.jsp");
            %>   
    </body>
</html>
