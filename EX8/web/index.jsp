<%-- 
    Document   : index
    Created on : Jan 1, 2010, 3:48:14 AM
    Author     : admin
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="new.jsp">New Book</a>
        <% 
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/Books");
            Statement st = c.createStatement();
            ResultSet rs = st.executeQuery("select * from books");
        %>
        <table border="2">
            <tr>
                <th>Book_Id</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
            </tr>
        <% while(rs.next()){ %>
        <tr><td> <%  out.println(rs.getInt(1)); %> </td>
            <td> <%  out.print(rs.getString(2)); %> </td>
            <td> <%  out.print(rs.getString(3)); %> </td>
            <td> <%  out.print(rs.getDouble(4)); %> </td>
        </tr>
        <% } %>
        </table>
        <p>The Total no book in the database is: 
            <%
                rs = st.executeQuery("select count(*) from books");
                rs.next();
                out.print(rs.getInt(1)); 
            %></p>
        <p>The average price of all books: <%
            rs = st.executeQuery("select avg(price) from books");
            rs.next();
            out.print(rs.getDouble(1)); 
        %></p>
        <p>The Total no book in the database is: <% 
            rs = st.executeQuery("select max(price) from books");
            rs.next();
            out.print(rs.getInt(1)); 
        %></p>
    </body>
</html>
