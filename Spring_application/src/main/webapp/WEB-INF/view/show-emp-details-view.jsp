
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<body>

<h2>You are welcome</h2>

<br>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Car that you want:${employee.carBrand}
<br>
Language(s):
<ul>

    <c:forEach var="lang" items="${employee.languages}">

        <li> ${lang} </li>
    </c:forEach>

</ul>
Your email: ${employee.email}
<br>
Your phone number: ${employee.phoneNumber}

</body>
</html>