lz<%-- 
    Document   : index.jsp
    Created on : 12 May 2025, 11:26:56 pm
    Author     : Dhiru
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Factorial Calculator</title>
</head>
<body>
    <h2>Factorial Calculator</h2>

    <form method="post">
        Enter a number: <input type="number" name="num" required>
        <input type="submit" value="Calculate">
    </form>

    <%
        String numberStr = request.getParameter("num");
        if (numberStr != null) {
            int num = Integer.parseInt(numberStr);
            long factorial = 1;
            for (int i = 1; i <= num; i++) {
                factorial *= i;
            }
    %>
        <h3>Factorial of <%= num %> is <%= factorial %></h3>
    <%
        }
    %>
</body>
</html>
