<%-- 
    Document   : Register
    Created on : Feb 5, 2019, 9:51:49 PM
    Author     : Rishabh
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image: url("images/Backgrounds.jpg");
            }
            #main{
                background-color:azure;
                box-shadow: 0px 1px 6px #ccc;
                width:550px;
                height: 400px; 
                display: inline-block;
                font-size: 20px;
                font-weight:bold;
                margin-top: 70px;
            } 
            input[type=submit]{
                width:50%;
                height: 50%;
                border:none;
                background-color:#27d2c0;              
                color:white;
                font-size: 25px;
                transition: 0.15s all ease-in-out;
                cursor: pointer;
                float:right;
            }
            input[type=submit]:hover{
                background-color:#035048;
            }
            #space{
                height: 20px;
                width: 50px;
            }
        </style>
    </head>
    <body>
        <%
            String result = "", name = null, email = null, mobile = null;
            try {

                String user = request.getParameter("user");
                String pass = request.getParameter("pass");
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=LallyInfosys;Database=MyIdeas;user=log2;Password=123");
                Statement stmt = con.createStatement();
                String query = "select * from Signup";
                ResultSet rs = stmt.executeQuery(query);

                while (rs.next()) {
                    if (user.equalsIgnoreCase(rs.getString("Username"))) {
                        if (pass.equals(rs.getString("Password"))) {
                            result = "Login Success";
                            name = rs.getString("Name");
                            email = rs.getString("Email");
                            mobile = rs.getString("Mobile");
                            break;
                        } else {
                            result = "Password Incorrect";
                        }
                        break;
                    } else {
                        result = "Username Does Not Exist";
                    }
                }
            } catch (Exception e) {
                out.println("Exception");
            }

        %>
        <script>
                alert("Login Succesfull...! \n Welcomer User");
        </script>
        <!--<h1 class="w3-xxxlarge w3-text-red"><b><%=result%></b></h1>-->
                <%
                    if (result.equals("Login Success")) {
                        String nm = name;
    //                    out.println(nm);
   //                    out.println(email);
   //                    out.println(mobile);
                %>   
    <center>       
        <div id="main">
            <h1>Submit Your Idea</h1>
            <form action="./SubmitIdea1.jsp" method="post">
                <table>

                    <tr>
                        <td>Title </td> <td id="space"></td> <td><input type="text" name="title" required /></td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr>
                        <td>Idea Description</td> <td id="space" ></td><td><textarea  name="description" rows="5" required ></textarea> </td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr>
                        <td>Technologies Used</td> <td id="space"  ></td>
                        <td><textarea type="text" name="tech" required > </textarea></td> 
                    </tr> 
                    <tr id="space"></tr>
                    <tr> <td></td> <td></td>
                        <td> <input type="submit" value="Submit" /></td>
                    </tr>
                </table>
            </form>
        </div>
    </center>
    <%
        } else {
            request.setAttribute("errorMessage", result);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    %>
</body>
</html>
