<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>hw2</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<h1>Book order form</h1>
<p>Please select book(s) you wish to order.</p>

<c:if test="${message1 != null}">
    <p><i>${message1}</i></p>
</c:if>

    <c:if test="${message2 != null}">
          <p><i>${message2}</i></p>
    </c:if>

<table>
    <tr>
         <th>Cover</th>
        <th>Title</th>
        <th>Price</th>
        <th>Add to cart</th>
       
      
    </tr>
    <tr>
        <form action="cart" method="post">
        <td><img src="https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/15730/15730._SX360_QL80_TTD_.jpg" alt="infinity gauntlet" width="25%" height="25%"></td>
        <td>Infinity Gauntlet</td>
        <td>$15.99</td>
        <td>
                <input type="checkbox" name="infinitygauntlet" value="Add to Cart">
                
            </td>
    </tr>
    <tr>
        <td><img src="https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/149220/149220._SX360_CLs%7C360,553%7Ccu/cmx-cu-sash-lg.png%7C0,0,361,554%20208,401,152,152_QL80_TTD_.jpg" alt="Captain Marvel Vol. 1" width="25%" height="25%"></td>
        <td>Captain Marvel Vol. 1</td>
        <td>$12.99</td>
        <td>
                <input type="checkbox" name="captainmarvel" value="Add to Cart">
                
           </td>
    </tr>
    <tr>
        <td><img src="https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/736897/736897._SX360_QL80_TTD_.jpg" alt="Amazing Spider-Man" width="25%" height="25%"></td>
        <td>Amazing Spider-Man</td>
        <td>$9.99</td>
        <td>
                <input type="checkbox" name="spiderman" value="Add to Cart">
                
            </td>
    </tr>                                                                         
    <tr>
        <td><img src="https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/246089/DIG060514_1._SX360_CLs%7C360,554%7Ccu/cmx-cu-sash-lg.png%7C0,0,361,555%20208,402,152,152_QL80_TTD_.jpg" alt="Astonishing Ant-Man" width="25%" height="25%"></td>
        <td>Astonishing Ant-Man</td>
        <td>$14.99</td>
        <td>
            <input type="checkbox" name="antman" value="Add to Cart"></td>
                
    
         
    </tr>
</table>
        <label class="pad_top">Name:</label>
        <input type="text" name="name" value="${user.name}" required><br>
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}" required><br>
        

        <input type="submit" value="Place Order">
        </form>
</body>
</html>