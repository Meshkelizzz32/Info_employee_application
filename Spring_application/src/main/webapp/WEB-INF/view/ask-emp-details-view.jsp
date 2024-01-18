<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>
    Dear Employee, Please enter your details
</h2>

<br>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    Department <form:select path="department">

    <form:options items="${employee.departments}"/>

</form:select>

    <br>

    Which car do you want?
    BMW <form:radiobutton path="carBrand" value="BMW"/>
    MB <form:radiobutton path="carBrand" value="Mercedes-Benz"/>
    Lada <form:radiobutton path="carBrand" value="Lada"/>
<%--    <form:radiobuttons path="carBrands" items="${employee.carBrands}"/>--%>
    <br>

    What foreigh languege(s) do you know?
<%--    EN<form:checkbox path="languages" value="English"/>--%>
<%--    DE<form:checkbox path="languages" value="German"/>--%>
<%--    RUS<form:checkbox path="languages" value="Russian"/>--%>
<form:checkboxes path="languages" items="${employee.languageList}"/>

    <br>
    Email <form:input path="email"/>
    <form:errors path="email"/>

    <br>
    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>

    <input type="submit" value="Ok">

</form:form>

</body>

</html>