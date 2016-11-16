<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="Conexion.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:query var="cdr" dataSource="${bd}">
SELECT nombre FROM alumnos
</sql:query>

<%-- Mostrar el resultado, cdr, en una tabla --%>
  <table width=40% border=1>
    <%-- Cabeceras --%>
    <tr>
      <th>Alumno</th>
    <%-- Filas --%>
    <c:forEach var="fila" items="${cdr.rows}">
      <tr>
        <td width=40%>${fila.nombre}</td>
       
      </tr>
    </c:forEach>
  </table>

</body>
</html>