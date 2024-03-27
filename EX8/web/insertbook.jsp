<%-- 
    Document   : insertbook
    Created on : Mar 26, 2024, 3:12:00 PM
    Author     : admin
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
        <% Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Books");
            Statement st = c.createStatement();
            int bookid = Integer.parseInt(request.getParameter("bookid"));
            String name = request.getParameter("name");
            String author = request.getParameter("author");
            double price = Double.parseDouble(request.getParameter("price"));
            st.executeUpdate("insert into books values ("+bookid+ ",'"+name+"','"+author+"',"+price+ ")");
            response.sendRedirect("/IP7");
        %>
    </body>
</html>
