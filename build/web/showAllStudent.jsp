<%-- 
    Document   : showAllStudent
    Created on : Nov 7, 2021, 6:51:05 PM
    Author     : asus
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Student"%>
<%@page import="model.StudentTable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student List</title>
    </head>
    <jsp:useBean id="std" class="model.Student" scope="request"/>
    <%
                       
            List<Student> stdList = StudentTable.findAllStudent();
            Iterator<Student> itr = stdList.iterator();
            
        %>
    <body>
        <center>
        <h1>Student List</h1>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>GPA</th>
          </tr>
          <%
              
               while(itr.hasNext()) {
                   std = itr.next();
                   out.println("<tr>");
                   out.println("<td> "+ std.getId() + "</td>");
                   out.println("<td> "+ std.getName() + "</td>");
                   out.println("<td> "+ std.getGpa() + "</td>");
                   out.println("<tr>");
               }
          %>
    </table>
    <a href="index.html">Back to Menu</a>
 </center>
    </body>
</html>
