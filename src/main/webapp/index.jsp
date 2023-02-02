<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Hello</title>
</head>
<body>
<p>The servlet takes the value of the isVisible variable from the request parameter, and then returns it here as a response. So I have prepared two links.</p>
<p><a href="http://localhost:8080/LearningJSTL_war/servlet?isVisible=true">http://localhost:8080/LearningJSTL_war/servlet?isVisible=true</a></p>
<p><a href="http://localhost:8080/LearningJSTL_war/servlet?isVisible=false">http://localhost:8080/LearningJSTL_war/servlet?isVisible=false</a></p>

<c:if test="${isVisible == true}">
    <p>isVisible=true</p>
</c:if>

</body>
</html>
