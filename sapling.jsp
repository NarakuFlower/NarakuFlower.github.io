<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	
	<head>
		<meta charset="UTF-8">
		<title>
			Welcom to sapling!
		</title>
		<style>
			a{
				padding-right:15%;
			}
			h1{
				color: #1EC391;
			}
		</style>
	</head>
	
<body>
	<div class = "Header">
		<tr>
			<header>
					<td>
						<a herf = "register.jsp" id = "register">
							Register
						</a>
					</td>
					<td>
						<a herf = "login.jsp" id = "login">
							Login
						</a>
					</td>
					<td>
						<a herf = "contact.jsp" id = "contact">
							Contact
						</a>
					</td>
					<td>
						<a herf = "about.jsp" id = "about">
							About
						</a>
					</td>
					<td>
						<a herf = "help.jsp" id = "help">
							Help
						</a>
					</td>
			</header>
			</tr>
	</div>
	<div id = "title" align = "center">
			<h1>
				Sapling Student Education System
			</h1>
	</div>
	<div id="rolling picture" style="overflow:hidden;width:500px;">
			<table cellpadding="0" cellspacing="0" border="0">
				<tr><td id="butong_net_left1" valign="top" align="center">
					<table cellpadding="2" cellspacing="0" border="0">
						<tr align="center">
							<td><img src="/Material/1.jpg"></td>
							<td><img src="/Material/2.jpg"></td>
							<td><img src="/Material/1.jpg"></td>
							<td><img src="/Material/2jpg"></td>
							<td><img src="/Material/1.jpg"></td>
						</tr>
					</table>
				</td>
					<td id="butong_net_left2" valign="top">
					</td>
				</tr>
			</table>
		</div>
		<script>
			var speed=30//速度数值越大速度越慢
			butong_net_left2.innerHTML=butong_net_left1.innerHTML
			function Marquee3(){
				if(butong_net_left2.offsetWidth-butong_net_left.scrollLeft<=0)
					butong_net_left.scrollLeft-=butong_net_left1.offsetWidth
				else{
					butong_net_left.scrollLeft++
				}
			}
			var MyMar3=setInterval(Marquee3,speed)
			butong_net_left.onmouseover=function() {clearInterval(MyMar3)}
			butong_net_left.onmouseout=function() {MyMar3=setInterval(Marquee3,speed)}
		</script>
	</body>
	
</html>