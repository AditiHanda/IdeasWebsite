<%-- 
    Document   : SignUp
    Created on : Feb 5, 2019, 9:53:35 PM
    Author     : Rishabh
--%>

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
                height: 500px; 
                display: inline-block;
                font-size: 25px;
                font-weight:bold;
                margin-top: 50px;
            } 
            input[type=submit]{
                width:100%;
                height: 60%;
                border:none;
                background-color:#27d2c0;              
                color:white;
                font-size: 25px;
                transition: 0.15s all ease-in-out;
                cursor: pointer;
               
            }
            input[type=submit]:hover{
                background-color:#035048;
            }
            #space{
                height: 20px;
                width: 50px;
            }
            input[type=text]{ 
                height: 25px;
            }
            input[type=email]{ 
                height: 25px;
            }
            input[type=password]{ 
                height: 25px;
            }
            span{
                color: red;
            }
           
        </style>

    </head>
    <body>
    <center>
        <div id="main">
            <h1>Sign Up</h1>
            <form action="./SignUp1.jsp" method="post" >
                <table>
                    <tr>
                        <td>Name</td><td id="space"> <td><input type="text" name="name" class="required"  /></td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr>
                        <td>UserName</td> <td id="space"><td><input type="text" name="user" class="required"   /></td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr>
                        <td>Password</td><td id="space"> <td><input type="password" name="pass" required /></td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr>
                        <td>Email</td><td id="space"> <td><input type="email" name="email" required /></td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr>
                        <td>Mobile</td><td id="space"> <td><input type="text" name="mob" required /></td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr> <td></td> 
                        <td> <input type="submit" value="Register" /></td>
                    </tr>
                </table>
            </form>
            <span></span>
        </div>
        
    </center>
</body>
</html>
