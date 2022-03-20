<%-- 
    Document   : index
    Created on : Mar 19, 2022, 12:00:39 AM
    Author     : NamNguyen
--%>


<%@page import="business.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Murach's Java Servlets and JSP</title>
    </head>
    <body>
        <%String message1 = (String) request.getAttribute("message1");
            String message2 = (String) request.getAttribute("message2");
            String message3 = (String) request.getAttribute("message3");%>
        <%User user = (User) request.getAttribute("user");%>
        <h1>Join our email list</h1>
        <p>To join our email list, enter your name and
            email address below. <br>
            Then, click on the Submit button.</p>
        <form action="addToEmailList" method="post">
            <table cellspacing="5" border="0">
                <tr>
                    <td align="right">First name:</td>
                    <td><input type="text" name="firstName" value="${user.getFirstName()}" ></td>
                </tr>
                <tr>
                    <td></td>
                    <td>${message1}</td>
                </tr>
                <tr>
                    <td align="right">Last name:</td>
                    <td><input type="text" name="lastName" value="${user.getLastName()}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td>${message2}</td>
                </tr>
                <tr>
                    <td align="right">I'm interested in these type of music: </td>
                    <td><input type="checkbox" name="music" value="rock">Rock
                        <input type="checkbox" name="music" value="country">Country
                        <input type="checkbox" name="music" value="bluegrass">Bluegrass
                        <input type="checkbox" name="music" value="folk">Folk</td>
                </tr>
                <tr>
                    <td align="right">Email address:</td>
                    <td><input type="text" name="emailAddress" value=""${user.getEmailAddress()}""></td>
                </tr>
                <tr>
                    <td></td>
                    <td>${message3}</td>
                </tr>
                <tr>
                    <td></td>
                    <td><br>
                        <input type="submit" value="Submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>