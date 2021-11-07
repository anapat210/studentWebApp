<%-- 
    Document   : confirmUpdate
    Created on : Nov 7, 2021, 7:28:57 PM
    Author     : asus
--%>

<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Update Student</title>
    </head>
    <%Student std = (Student)session.getAttribute("student"); %>
    <body>
        <form name="confirmUpdate" action="ConfirmUpdateController">
            ID : <%=std.getId()%>
            </br>
            Name: <input type="text" name="name" value="<%=std.getName()%>" size="40" />
            </br>
            GPA : <input type="text" name="GPA" value="<%=std.getGpa()%>" size="10" />
            </br>
            <input type="submit" value="Update" name="update" />
            <input type="submit" value="Cancel" name="cancel" />
        </form>
    </body>
</html>
