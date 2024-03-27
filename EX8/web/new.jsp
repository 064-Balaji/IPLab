<%-- 
    Document   : new
    Created on : Mar 26, 2024, 3:05:55 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Enter new record on Database</h1>
        <form style="display: flex; flex-direction: column" action="insertbook.jsp" method="get">
            <label>book_id<input type="text" name="bookid"></label>
            <label>name <input type="text" name="name"></label>
            <label>author <input type="text" name="author"></label>
            <label>price <input type="text" name="price"></label>
            <input type="submit">
        </form>
    </body>
</html>
