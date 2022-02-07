<%--
  Created by IntelliJ IDEA.
  User: eloysbook
  Date: 2/4/22
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
<section>
    <label for="size">SIZE:</label>
    <select name="size" id="size">
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
    </select>
</section>

<section>
    <label for="sauce">SAUCE:</label>
    <select name="sauce" id="sauce">
        <option value="red">Red</option>
        <option value="white">White</option>
        <option value="pink">Pink</option>
    </select>
</section>

<section>
    <label for="crust">CRUST:</label>
    <select name="crust" id="crust">
        <option value="stuffed">Stuffed</option>
        <option value="thin">Thin</option>
        <option value="deep">Deep Dish</option>
    </select>
</section>

    <label for="#">TOPPINGS:</label><br>
    <input type="checkbox" id="pepperoni" name="pepperoni" value="pepperoni">
    <label for="pepperoni"> Pepperoni</label><br>
    <input type="checkbox" id="sausage" name="sausage" value="sausage">
    <label for="sausage"> Sausage</label><br>
    <input type="checkbox" id="pineapple" name="pineapple" value="pineapple">
    <label for="pineapple"> Pineapple</label><br>

    <label for="address">ADDRESS:</label>
    <input type="text" id="address" name="address">
    <br>

  <input name="submit"  id="submit" type="submit">

</form>





</body>
</html>
