<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>hw2</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>Thanks for your order</h1>

<p>Here is the information that you entered:</p>

<label>Email:</label>
    <span>  <%= request.getParameter("email") %></span><br>
    <label>Name:</label>
    <span>  <%= request.getParameter("name") %></span><br><br>

<table>
  <tr>
    <th>Cover</th>
    <th>Title</th>
    <th>Price</th>
    

  
     


    
    <c:if test="${infinitygauntlet != null}">
        
    
    <tr>
        <td><img src="https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/15730/15730._SX360_QL80_TTD_.jpg" alt="infinity gauntlet" width="25%" height="25%"></td>
        <td>Infinity Gauntlet</td>
        <td>$15.99</td>
    </tr>
    </c:if>
    
    <c:if test="${captainmarvel != null}">
        <tr>
            <td><img src="https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/149220/149220._SX360_CLs%7C360,553%7Ccu/cmx-cu-sash-lg.png%7C0,0,361,554%20208,401,152,152_QL80_TTD_.jpg" alt="Captain Marvel Vol. 1" width="25%" height="25%"></td>
        <td>Captain Marvel Vol. 1</td>
        <td>$12.99</td>
        </tr>
    </c:if>
        
        <c:if test="${spiderman != null}">
            <tr>
                <td><img src="https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/736897/736897._SX360_QL80_TTD_.jpg" alt="Amazing Spider-Man" width="25%" height="25%"></td>
        <td>Amazing Spider-Man</td>
        <td>$9.99</td>
            </tr>
        </c:if>
            
            <c:if test="${antman != null}">
                <tr>
                    <td><img src="https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/246089/DIG060514_1._SX360_CLs%7C360,554%7Ccu/cmx-cu-sash-lg.png%7C0,0,361,555%20208,402,152,152_QL80_TTD_.jpg" alt="Astonishing Ant-Man" width="25%" height="25%"></td>
        <td>Astonishing Ant-Man</td>
        <td>$14.99</td>
                </tr>
            </c:if>
</mma:cart>

</table>
 
<p>To order another book,click on the Back button in your <br>
    browser or the Return button shown below.</p>

<form action="" method="post" class="pad_top">
  <input type="hidden" name="action" value="shop">
  <input type="submit" value="Return">
</form>



</body>
</html>