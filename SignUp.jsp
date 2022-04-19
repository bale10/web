<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="mk.com.itcenter.ff.bean.User"%>
<html>
  <head>
    <title>SignUp</title>
  </head>
  <body>
	<script type="text/javascript" language="javascript">		
		function checkEmail(){
			var str = document.getElementById("eMail").value;
			var reg1 = /(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)/;
			var reg2 = /^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3}|[0-9]{1,3})(\]?)$/;
			if (!reg1.test(str) && reg2.test(str)) {
				document.getElementById("emailError").style.display = 'none';
				return true;
			}else{
				document.getElementById("emailError").style.display = 'block';
				return false;
			}
		}
		function checkPassword(){
			var pass = document.getElementById("pass").value;
			var cPass = document.getElementById("cPass").value;
			if(cPass!=''){
				if(pass == cPass){
					document.getElementById("passwordError").style.display = 'none';
					return true;
				}else{
					document.getElementById("passwordError").style.display = 'block';
					return false;
				}
			}
		}
		function ffSingUp(){
			var elements = document.body.getElementsByTagName("input");
			for (var i=0; i<elements.length; i++) {
				if(elements[i].value == ''){
					document.getElementById("ffError").style.display = 'block';
					return false;
				}
			}
			document.singUp.submit();
		}
	</script>
	<form action="SingUp" method="post" name="singUp">
	    <table>
	    <%if(request.getParameter("userInUse")!=null){	    	
	    	%>
	    		<tr>
	    			<td colspan="2" align="center">
	    				<div style="color:red;">
	    					*Username already exist
	    				</div>
	    			</td>	    			
	    		</tr>
	    	<%
	    	}
	    	 %>
	    	<tr>
	    		<td colspan="2" align="center">
	    			<div style="color:red; display: none; width:100%" id="ffError">
	    				*You must fill in all of the fields.
	    			</div>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td align="right">
	    			*First Name
	    		</td>
	    		<td align="left">
	    			<input type="text" name="firstName"/>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td align="right">
					*Last Name
	    		</td>
	    		<td align="left">
	    			<input type="text" name="lastName"/>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td align="right">
					*Address
	    		</td>
	    		<td align="left">
	    			<input type="text" name="address"/>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td align="right">
					*E-mail
	    		</td>
	    		<td align="left">
	    			<input type="text" name="eMail" id="eMail" " onchange="checkEmail()"/>
	    		</td>
	    		<td>
	    			<div style="color:red; display: none;" id="emailError">
	    				*Invalid email format
	    			</div>
	    		</td>
	    	</tr>
			<tr>
	    		<td align="right">
					*Username
	    		</td>
	    		<td align="left">
	    			<input type="text" name="userName"/>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td align="right">
					*Password
	    		</td>
	    		<td align="left">
	    			<input type="password" name="password" id="pass" onchange="checkPassword()"/>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td align="right">
					*Confirm Password
	    		</td>
	    		<td align="left">
	    			<input type="password" id="cPass" onchange="checkPassword()"/>
	    		</td>
	    		<td>
	    			<div style="color:red; display: none;" id="passwordError">
	    				*Incorrect password confirmation
	    			</div>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td colspan="2" align="right">
	    			<a href="#" onclick="ffSingUp()">Sing Up</a>
	    		</td>
	    	</tr>    	
	    </table>
    </form>
  </body>
</html>