<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="login.css" rel="stylesheet" type="text/css"/>

<style>
body {
  background-color: linen;
  /*background-image: url('images/mountains.jpg');*/
    box-sizing: border-box;
  
}

h3 {
  color:  #A25F08;
  margin-left: 40px;
  font-size: 50px;
  font-weight: bold;
}
form{
 text-align: center;
}
/*.pass {
 width: 150px;
}
*/
label{
 width: 180px;
  padding: 12px 0px;
  box-sizing: border-box;
 /* background-color: red;*/
 font-weight: bold;
   font-size: 20px;
 
  color:  #A25F08;
 
 display: inline-block;  /*this makes the width fixed*/
}
input{
 width: 25%;
  padding: 12px 20px;  /*12 for top dpwn */
  margin: 8px 4px;
  box-sizing: border-box;
}

input:placeholder{
font-size: 25px;
}
::placeholder {
font-size: 17px;
}

button{
 width: 100px;
height: 40px;
font-size: 25px;
border-radius: 12px;
  text-align: center;
   position: relative;
    color:  #A25F08;
  border-color:   #A25F08;
  background-color: white;
  left: 220px;

}
a{
color:blue;
font-size: 20px;
margin:5px;
 position: relative;
  down: 70px;
  left: 460px;
}


</style>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<form   action="login" method="post">
<h3 class="header"> Login</h3>

<label    for="email">Enter your email:</label>
<input type="email"   id="email" placeholder="Enter your Email" name="email" required>
<br>
<br>

<label  class="pass" for="pass"  >Password: </label>
<input   type="password" id="pass" name="pass" placeholder="Enter your Password"/>
<br>
<br>

<button type="submit"> Login</button>
<br>
<br>
<%
boolean con = false;
if(request.getAttribute("email")!=null){
	request.setAttribute("emaill", null);
	out.append("Email doesn't exist!!"+"\n"+"Try another email");
	
}
 if(request.getAttribute("pass")!=null){
	request.setAttribute("pass", null);
	out.append("Passwords is wrong !!"+"<br>"+"Try again"+
	"<br>");
	//request.getParameter("password")+"  "+request.getParameter("passwordPepeated")	);
}

%>
</form>
<br>
<a href="JSPs/register.jsp">I don't have an account</a>
</body>
</html>