<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			#bg{
				width:940px;height:300px;
				background：url(images/精品展示.jpg);
			}
			#sm{/*滚动对象样式*/
				overflow:hidden;/*隐藏Div中多余的内容，增加图片会一起滚动*/
				width:920px;height:280px;
				margin:0 auto;
				padding-top:30px;
			}

		</style>
	</head>
	
	<body>
		<% response.setContentType("text/html;chartset=utf-8");%>
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
		<div id="bg">
			<center>
				<div id="sm">	<!--滚动div-->
						<table>		<!--外表格1x2,且第2单元格是空的-->
							<tr>
								<td id="Pic1">
									<table>	<!--内表格1x9,存放9张图片-->
										<tr>
											<td><img src="Material/Images/1.jpg" onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
											<td><img src="Material/Images/2.jpg" onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
											<td><img src="Material/Images/1.jpg" onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
											<td><img src="Material/Images/2.jpg"onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
											<td><img src="Material/Images/1.jpg" onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
											<td><img src="Material/Images/2.jpg" onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
											<td><img src="Material/Images/1.jpg" onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
											<td><img src="Material/Images/2.jpg" onmouseover="mouseover(this)" onmouseout="mouseout(this)"/></td>
										</tr>
								   </table>
							   </td>
							<td id="Pic2"></td>
							</tr>
						</table>
				</div>
			</center>
		</div>
	
		<script>
			Pic2.innerHTML=Pic1.innerHTML;//复制一组图片，但被隐藏
			function scrolltoleft(){//定义向左移动的方法
				sm.scrollLeft++;//改变层的水平坐标，实现向左移动
				if(sm.scrollLeft>=Pic1.scrollWidth)//需要复位
					sm.scrollLeft=0;//层的位置复位，浏览器窗口的宽度有限的
			}

			var MyMar=setInterval(scrolltoleft,40); //定时器，方法名后不可加()

			function mouseover(x){//放大图片
				x.style.width="210";
				x.style.height="256"
				x.style.cursor="pointer"
			}
			function mouseout(x){//图片复原
				x.style.width="105";
				x.style.height="128"
			}

			//两面两行是用方法响应对象的事件
			sm.onmouseover=function(){//匿名方法（函数）
				clearInterval(MyMar);//停止滚动
			}

			sm.onmouseout=function(){
				MyMar = setInterval(scrolltoleft,40);//继续滚动
			}


		</script>

	</body>
	
</html>