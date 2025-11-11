<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
    <h2>Simple CI/CD Calculator</h2>
    <form action="calculate" method="post">
        <input type="number" name="num1" step="any" required placeholder="Enter number 1"><br><br>
        <input type="number" name="num2" step="any" required placeholder="Enter number 2"><br><br>
        <select name="operation">
            <option value="add">Add</option>
            <option value="sub">Subtract</option>
            <option value="mul">Multiply</option>
            <option value="div">Divide</option>
        </select><br><br>
        <input type="submit" value="Calculate">
    </form>
</body>
</html>
