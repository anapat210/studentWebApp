<%-- 
    Document   : updateResult
    Created on : Nov 7, 2021, 7:32:18 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student Result</title>
    </head>
    <body>
        <h1><%= request.getAttribute("rowUpdated") + " row updated " %> </h1>
        </br>
        <jsp:include page="showAllStudent.jsp" flush="true" />
    </body>
</html>
