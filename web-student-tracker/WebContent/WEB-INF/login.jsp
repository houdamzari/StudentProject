<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>Employee Login Form</h1>
  <form action="<%=request.getContextPath()%>/login.jsp" method="post">
   <table style="with: 100%">
    <tr>
     <td>email</td>
     <td><input type="email" name="email" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="pass" /></td>
    </tr>

   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>