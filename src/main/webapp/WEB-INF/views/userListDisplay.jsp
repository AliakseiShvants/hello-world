<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
    <meta charset="utf-8">
    <title> Spring MVC CrudTestTask </title>
   </head>

<body bgcolor=white>

<table  align=center  width=60% border=2>
    <caption align=top>
        <h1>Наши пользователи</h1>
    </caption>

    <tr>
        <th width=25% align=center>Фамилия и имя пользователя</th>
        <th width=5% align=center>Возраст</th>
        <th width=5 align=center>Является ли администратором</th>
        <th width=15% align=center>Дата создания учетной записи</th>
    </tr>

    <c:forEach items="${userList}" var="user">
    <tr>
        <td width=25% >${user.name}</td>
        <td width=5% align=center>${user.age}</td>
        <td width=5% align=center width=>${user.admin}</td>
        <td width=15% align=center>${user.createdDate}</td>
            <form>
        <td width=5%><button>Править</button></td>
        <td width=5%><button>Удалить</button></td>
            </form>
    </tr>
    </c:forEach>
</table>

      <table align=center width=30% border=2>
        <form method="post" action="http://localhost:8080/crudtesttask/user-module/addNewUser" align=center>
        <tr>
            <td ><input type="text" value="Фамилия и имя"></td>
            <td><input type="text" value="Возраст"></td>
            <td><input type="text" value="Админ?"></td>
            <td width=4%><input type="submit" value="Новый пользователь"></td>
        </form>

        </tr>
        </table>


</body>
</html>
