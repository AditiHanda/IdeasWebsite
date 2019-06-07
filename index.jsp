<%-- 
    Document   : iindex
    Created on : Feb 5, 2019, 9:53:03 PM
    Author     : Rishabh
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        
        <!--<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>-->
        <!--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
        <!--<script src="js/jquery.min.js" type="text/javascript"></script>-->
        <!--<link rel="stylesheet" href="style.css" type="text/css"/>-->
        <style>
            body
            {
                font-family: sans-serif;
                -moz-user-select:none;
                background-image: url("images/Backgrounds.jpg");
                height: 100px;
                background-repeat:no-repeat;
                width:98%;
            }
            #box{
                padding-left: 80px;
                padding-bottom: 70px;             
            }
            #link
            {
                padding-top: 20px;
                padding-left: 60px;             
                color: #666;
            }
            element.style {
            }
            .section-shaped .shape.shape-skew + .shape-container {
                padding-top: 18rem;
                padding-bottom: 19rem;
            }
            .section-shaped .shape.shape-skew + .container {
                padding-top: 0;
            }
            .section-shaped .shape + .container {
                position: relative;
                height: 100%;
                padding-top: 6rem;
                padding-bottom: 0rem;
            }
            .d-flex {
                display: flex !important;
            }
            *, *::before, *::after {
                box-sizing: border-box;
            }
            a
            {
                color: #666;
                -webkit-transition: all .2s;
                cursor:pointer;
                width: 300px;   
                font-size: 30px; 
                float: right;
            }
            a:hover
            {
                color: #aaa;
            }
            img {
                border-radius: 100%;
                height: 7%;
                width: 7%;
                cursor: pointer;
            }

            #foot{
                background-color: black;
                height: 250px;
                width: 102.05%;

            }
            .card{
                -webkit-transition: all 0.50s ease-in-out;
                -moz-transition: all 0.50s ease-in-out;
                -ms-transition: all 0.50s ease-in-out;
                -o-transition: all 0.50s ease-in-out;
                -webkit-box-shadow: 0 8px 12px -6px black;
                -moz-box-shadow: 0 8px 12px -6px black;
                box-shadow: 0 8px 12px -6px black;  
            }
            .card:hover {
                -webkit-box-shadow: 0 15px 38px -6px black;
                -moz-box-shadow: 0 15px 38px -6px black;
                box-shadow: 0 15px 38px -6px black;

            }
            .button {
                /*border-radius: 4px;*/
                background-color: #000000;
                /*border: none;*/
                color: #FFFFFF;
                text-align: center;
                font-size: 28px;
                /*padding: 20px;*/
                width: 200px;
                transition: all 0.5s;
                cursor: pointer;
                margin: 5px;               
            }

            .button span {
                cursor: pointer;
                display: inline-block;
                position: relative;
                transition: 0.5s;
            }

            .button span:after {
                content: '\00bb';
                position: absolute;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.5s;
            }

            .button:hover span {
                padding-right: 25px;
            }

            .button:hover span:after {
                opacity: 1;
                right: 0;
            }



        </style>
      
    </head>
    <body>
        <div id="link">
            <img src="images/logo.png" height="50" width="50" alt="aa"/>&emsp;&emsp;&emsp;
            <a href="SignUp.jsp">Sign Up</a>&emsp;&emsp;
            <a href="login.jsp">Sign In</a>&emsp;&emsp;
            
        </div> 

        <div class="container shape-container d-flex">
            <div class="col px-0">
                <div class="row">
                    <div class="col-lg-6">
                        <h2 class="display-3  text-black">myIdeas  </h2>
                        <h1><span>Complete Idea Box!</span></h1>
                        <p class="lead  text-black"> Be it Research work ,website , project or any Ideas Resource you are looking for...!
                            <br>  We have all got it here! </p>
                    </div>
                </div>
            </div>
        </div>

        <section class="section section-lg pt-lg-4 mt--100">
            <div class="row justify-content-center">

                <%
                    int counter = 1;
                    String name = null, title = null, des = null, tech = null;
                    String t[] = null;
                    try {

                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
                        Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=LallyInfosys;Database=MyIdeas;user=log2;Password=123");
                        Statement stmt = con.createStatement();
                        String query = "select * from SubmitIdea order by SerialNo asc";
                        ResultSet rs = stmt.executeQuery(query);
                        while (rs.next() && counter < 7) {
                            title = rs.getString("Title");
                            des = rs.getString("Description");
                            tech = rs.getString("Technologies");
                            t = tech.split(" ");
                            counter++;
                %>

                <div class="col-lg-4 move" id="box">
                    <div class="card  border-0 h-100">
                        <div class="card-body py-5">
                            <h4 class="text-primary text-uppercase"><%=title%></h4>
                            <p class="description "> <%=des%> </p>
                            <div>
                                <% for (int i = 0; i < t.length; i++) {%>
                                <span class="badge badge-pill badge-primary"><%=t[i]%></span>
                                <%}  %>
                            </div>                   
                        </div>
                    </div>
                </div> 


                <%
                    }
                    if (request.getParameter("btn1") != null) //check button click event not null
                    {
                        String query1 = "select * from SubmitIdea where SerialNo>6 order by SerialNo asc";
                        ResultSet rs1 = stmt.executeQuery(query1);
                        while (rs1.next()) {
                            title = rs1.getString("Title");
                            des = rs1.getString("Description");
                            tech = rs1.getString("Technologies");
                            t = tech.split(" ");
                            counter++;
                %>
                <div class="col-lg-4" id="box" >
                    <div class="card  border-0 h-100">
                        <div class="card-body py-5">
                            <h4 class="text-primary text-uppercase"><%=title%></h4>
                            <p class="description "> <%=des%> </p>
                            <div>
                                <% for (int i = 0; i < t.length; i++) {%>
                                <span class="badge badge-pill badge-primary"><%=t[i]%></span>
                                <%}  %>
                            </div>                   
                        </div>
                    </div>
                </div> 
                <%
                        }
                    }
//                    if (request.getParameter("btn2") != null) //check button click event not null
//                    {
//                        String query1 = "select * from SubmitIdea where SerialNo>33 order by SerialNo asc";
//                        ResultSet rs1 = stmt.executeQuery(query1);
//                        while (rs1.next()) {
//                            title = rs1.getString("Title");
//                            des = rs1.getString("Description");
//                            tech = rs1.getString("Technologies");
//                            t = tech.split(" ");
//                            counter++;
//
//                %>
                <!--                <div class="col-lg-4" id="box">
                                    <div class="card card-lift--hover shadow border-0">
                                        <div class="card-body py-5">
                                            <h4 class="text-primary text-uppercase"><%=title%></h4>
                                            <p class="description "> <%=des%> </p>
                                            <div>
                                                <span class="badge badge-pill badge-primary"><%=t[0]%></span>
                
                                            </div>                   
                                        </div>
                                    </div>
                                </div> -->

                <%
//                            }
//                        }
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                %> 


            </div>
        </section>
    <center><form><button name="btn1" class="button"><span>Show More </span></button></form></center>
    <!--<center><form><button name="btn2" class="button"><span>Show Less </span></button></form></center>-->


    <br>

    <footer class="footer footer-2" id="foot"><br><br><br>

        <div class="footer-top-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-lg-3 col-sm-10">
                        <div class="widget footer-widget about-widget">
                            <div class="widget-about-info mb-30 text-white">
                                <h2>myIdeas</h2>
                                <p>Be it Research work ,website , project or any Ideas Resource you are looking for...<br> We have got all in here! </p>
                            </div>
                        </div>
                    </div> 
                    <div class="col-sm-6 col-md-3 col-lg-3 offset-lg-1">
                        <div class="widget footer-widget footer-widget-link">
                            <h3 class="widget-title text-white">Useful Links</h3>
                            <!--<a href="#">Login</a>-->

                        </div>
                    </div> 
                    <div class="col-sm-6 col-md-4 col-lg-3 offset-lg-1">
                        <div class="widget footer-widget contact-widget">
                            <h3 class="widget-title text-white">Contact Us</h3>
                            <ul class="list-unstyled widget-contact-list">
                                <li class="contact-mail">
                                    <i class="ni ni-email-63"></i>
                                    <a href="#">myideas@gmail.com</a>
                                </li>
                            </ul>
                            <div class="contact-msg-button">
                                <a href="Feedback.jsp" class="btn btn-secondary btn-round">Give Feedback</a>
                            </div>

                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </footer>
</body>
</html>
