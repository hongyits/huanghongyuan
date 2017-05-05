<%@page import="com.huanghongyuan.mood.domain.CrmMood"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<!-- width 属性控制设备的宽度。假设您的网站将被带有不同屏幕分辨率的设备浏览，
    那么将它设置为 device-width 可以确保它能正确呈现在不同设备上。
initial-scale=1.0 确保网页加载时，以 1:1 的比例呈现，不会有任何的缩放。
在移动设备浏览器上，通过为 viewport meta 标签添加 user-scalable=no 可以禁用其缩放（zooming）功能。
通常情况下，maximum-scale=1.0 与 user-scalable=no 一起使用。这样禁用缩放功能后，用户只能滚动屏幕，
就能让您的网站看上去更像原生应用的感觉。   
     -->
<meta name="viewport"
	content="width=device-width, 
                                     initial-scale=1.0,  
                                     maximum-scale=1.0, 
                                     user-scalable=no">
<!-- 引入 Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
<link href="css/page.css" rel="stylesheet">
<title>hhy</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<jsp:include page="modalWindow.jsp" flush="true"></jsp:include>
<!-- 导入的script -->
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/page.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<script type="text/javascript">
		function xuexi() {
			alert("先随便写个上线 还没弄这个");
		}
		function aboutMe() {
			alert("所以也还没弄这个");
		}
		function zhuxiao() {
			window.location.href="moodAction_zhuxiao";
		}
		function delMood(obj) {
			window.location.href="moodAction_delMood?moodId="+obj.value;
		}
	</script>
	<!-----------------------------------------导航条设计开始--------------------------------->
	<!--黑色导航条样式为navbar-inverse，白色样式为default  ， .navbar-fixed-top导航条固定在顶端-->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<!------button为实现响应式布局，如果在手机上查看，点击button就可以弹出菜单---->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<s:if test="%{#session.isLogin ==\"yes\"}">>
				<a class="navbar-brand touristPattern" onclick="zhuxiao()">管理员模式</a>
			</s:if>
			<s:else>
				<a class="navbar-brand loginPattern">游客模式</a>
			</s:else>
			<!---方log的地方-->
		</div>
		<!-- 当浏览器小于某个值时，点击button图标显示导航条的内容（注意这里的id与button 的id对应）-->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<!--具体菜单项-->
			<ul class="nav navbar-nav">
				<li class="active"><a href="moodAction_findAll">心情</a></li>
				<!--普通菜单-->
				<li><a onclick="xuexi()">学习日志</a></li>
				<li><a onclick="aboutMe()">关于我</a></li>

			</ul>

			<!--导航栏右部，一般的登录 注册-->
			<!-- <ul class="nav navbar-nav navbar-right">
				<li><a href="#">登录</a></li>
			</ul> -->
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<!------------------------------------------导航条结束-------------------------------->

	<!---------主体 container居中------------------>
	<div class="container" style="height: 2000px">
		<!-- 心情板块 -->
		<div class="ylcon">
			<div class="tit">
				<div class="aut_na">
					<span>和美的黄宏源</span>
				</div>
				<div class="btn-group btn-group-xs edit_ri" role="group"
					aria-label="...">
					<s:if test="%{#session.isLogin ==\"yes\"}">
					<button type="button" class="btn btn-default" id="writeMood">写心情</button>
					</s:if>
				</div>
			</div>

			<div id="messDivId">

				<s:iterator value="#allMood" var="mood">
					<div class="story">
						<div class="opbtn"></div>
						<div class="m_top">
							<div class="aut_na">
								<h4>
									<%-- <strong></strong> --%>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</h4>
							</div>
							<div class="btn-group btn-group-xs edit_ri" role="group"
								aria-label="...">
								<button type="button" class="btn btn-default replyMood"
									value='<s:property value="#mood.moodId"/>'>
									<span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;回复
								</button>
								
								<s:if test="%{#session.isLogin ==\"yes\"}">
								 <button type="button" class="btn btn-default delMood"
									value='<s:property value="#mood.moodId"/>' onclick="delMood(this)">
									<span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;删除
								</button>
								</s:if>
							</div>
						</div>
						<p class="story_time">
							发布日期:
							<s:property value="#mood.moodSendDate" />
						</p>
						<p class="story_m">
							<s:property value="#mood.moodContent" />
						</p>
						<s:iterator value="#mood.commentsSet" var="comment">
							<p class="story_hf">
								<strong>IP：<s:property value="#comment.commentName" />回复于
								</strong><small><s:property value="#comment.commentSendDate" /></small>
								<s:property value="#comment.commentContent" />
							</p>
						</s:iterator>
					</div>
				</s:iterator>



			</div>
		</div>

<%-- 		
		分页插件 改天回来弄
		<ul class="page" maxshowpageitem="8" pagelistcount="6" id="page"></ul>
		<script type="text/javascript">
		function tt(dd){
		    alert(dd);
		   /*  window.location.href="moodAction.findAll?currentPage="+dd+""; */
		}  
		$("#page").initPage(20,1,tt);
		</script> --%>




		<!-------------------------心情板块结束----------------------------->
		<!-------------------------标签页结束----------------------------->
	</div>
	<div id="copyright">
		<p style="margin-top:10px">2016 hhy.</p>
		<p>工信部备案号： 暂无</p>
		<p>联系方式：qq:251152685 邮箱：251152685@qq.com</p>
	</div>
</body>
</html>
