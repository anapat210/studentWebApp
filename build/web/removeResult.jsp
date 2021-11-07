<%-- 
    Document   : removeResult
    Created on : Nov 7, 2021, 7:19:11 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Employee Result</title>
    </head>
    <body>
        <h1><%= request.getAttribute("rowDeleted") + " row deleted " %> </h1>
        </br>
        <jsp:include page="showAllStudent.jsp" flush="true" />
    </body>
</html>
