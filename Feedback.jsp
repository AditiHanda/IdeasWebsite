<%-- 
    Document   : Register
    Created on : Feb 5, 2019, 9:51:49 PM
    Author     : Rishabh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
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
                margin-top: 100px;
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
            #space2{
                height: 30px;
            }

            fieldset, label { margin: 0; padding: 0; }
            body{ margin: 20px; }
            h1 { font-size: 1.5em; margin: 10px; }

            /****** Style Star Rating Widget *****/

            .rating { 
                border: none;
                float: left;
            }

            .rating > input { display: none; } 
            .rating > label:before { 
                margin: 5px;
                font-size: 1.25em;
                font-family: FontAwesome;
                display: inline-block;
                content: "\f005";
            }

            .rating > .half:before { 
                content: "\f089";
                position: absolute;
            }

            .rating > label { 
                color: #ddd; 
                float: right; 
            }

            /***** CSS Magic to Highlight Stars on Hover *****/

            .rating > input:checked ~ label, /* show gold star when clicked */
            .rating:not(:checked) > label:hover, /* hover current star */
            .rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

            .rating > input:checked + label:hover, /* hover current star when changing rating */
            .rating > input:checked ~ label:hover,
            .rating > label:hover ~ input:checked ~ label, /* lighten current selection */
            .rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
        </style>
    </head>
    <body>
    <center>       
        <div id="main">
            <div id="space2"></div>
            <h1> Submit Your Feedback </h1>
            <form action="./Feedback1.jsp" method="post">
                <table>
                    <tr id="space"></tr>
                    <tr>
                        <td>Name </td> <td id="space"></td> <td><input type="text" name="name" required /></td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr>
                        <td>Contact</td> <td id="space" ></td><td> <input type="text" name="contact"  /> </td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr>
                        <td>Rating</td> <td id="space" ></td><td> 

                            <fieldset class="rating">
                                <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
                                <input type="radio" id="star4half" name="rating" value="4.5" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                                <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                                <input type="radio" id="star3half" name="rating" value="3.5" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                                <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
                                <input type="radio" id="star2half" name="rating" value="2.5" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                                <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                                <input type="radio" id="star1half" name="rating" value="1.5" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                                <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                                <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                            </fieldset>
                        </td> 
                    </tr>
                    <tr id="space"></tr>
                    <tr>
                        <td>Any Suggestion</td> <td id="space"  ></td>
                        <td><textarea type="text" name="sug" required > </textarea></td> 
                    </tr> 
                    <tr id="space"></tr>
                    <tr> <td></td> <td></td>
                        <td> <input type="submit" value="Submit" /></td>
                    </tr>
                </table>
            </form>
        </div>
    </center>

</body>
</html>
