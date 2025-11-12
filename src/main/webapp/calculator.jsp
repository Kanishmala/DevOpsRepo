<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CI/CD Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin-top: 60px;
        }
        h2 {
            color: #333;
        }
        form {
            display: inline-block;
            background: #fff;
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        input[type=number] {
            padding: 5px;
            margin: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        select, input[type=submit] {
            padding: 6px 12px;
            margin: 10px;
            border-radius: 5px;
            border: none;
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }
        select:hover, input[type=submit]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Simple CI/CD Calculator</h2>
    <form action="calculator.jsp" method="post">
        <input type="number" name="num1" step="any" required placeholder="Enter first number"><br>
        <input type="number" name="num2" step="any" required placeholder="Enter second number"><br>
        <select name="operation">
            <option value="add">Addition (+)</option>
            <option value="sub">Subtraction (-)</option>
            <option value="mul">Multiplication (×)</option>
            <option value="div">Division (÷)</option>
        </select><br>
        <input type="submit" value="Calculate">
    </form>

    <%
        // Retrieve form inputs
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String op = request.getParameter("operation");

        if (num1Str != null && num2Str != null && op != null) {
            try {
                double num1 = Double.parseDouble(num1Str);
                double num2 = Double.parseDouble(num2Str);
                double result = 0;

                switch (op) {
                    case "add": result = num1 + num2; break;
                    case "sub": result = num1 - num2; break;
                    case "mul": result = num1 * num2; break;
                    case "div": 
                        if (num2 != 0) result = num1 / num2;
                        else out.println("<p style='color:red;'>Error: Division by zero!</p>");
                        break;
                }

                out.println("<h3>Result: " + result + "</h3>");
            } catch (Exception e) {
                out.println("<p style='color:red;'>Invalid input!</p>");
            }
        }
    %>

    <br>
    <a href="index.jsp">Go to Home</a>
</body>
</html>
