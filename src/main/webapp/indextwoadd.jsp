<%-- 
    Document   : indextwoadd.jsp
    Created on : 12 May 2025, 11:40:23 pm
    Author     : dhiru
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dhiru</title>
</head>
<body>
    <h2>Addition of Two Numbers</h2>

    <form method="post">
        Enter first number: <input type="number" name="num1" required><br><br>
        Enter second number: <input type="number" name="num2" required><br><br>
        <input type="submit" value="Add">
    </form>

    <%
        String n1 = request.getParameter("num1");
        String n2 = request.getParameter("num2");

        if(n1==null) {
        n1="0";
        }
         if(n2==null) {n2="0";}
       // if (n1 != null && n2 != null) {
            int a = Integer.parseInt(n1);
            int b = Integer.parseInt(n2);
            int sum = a + b;
            
    %>
        <h3>Result: <%= a %> + <%= b %> = <%= sum %></h3>

</body>
</html>