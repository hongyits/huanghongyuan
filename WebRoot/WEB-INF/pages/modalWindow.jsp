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

<title>My JSP 'modalWindow.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
</head>

<body>
	<!-- 这边存储所有模态窗口 -->


	<!-- 模态框 -->


	<!-- 自带的 -->
	<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<form role="form" id="edit_form">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">留言板</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="content">内容</label>
							<textarea id="content" class="form-control" rows="3"></textarea>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="button" class="btn btn-primary" id="sub_btn" onclick="">完成</button>
					</div>
				</div>
			</form>
		</div>
	</div> -->


	<div id="sendMood" title="发表心情" style="display: none">
		<s:form namespace="/" action="moodAction_saveMood" id="sendMoodForm">
			<s:textarea name="moodContent" rows="10" cols="30"></s:textarea>
		</s:form>
	</div>
	
	<div id="replyMoodDiv" title="回复" style="display: none;">
		<s:form namespace="/" action="commentAction_saveComment"
			id="replyMoodForm">
			<s:hidden name="mood.moodId" value="1" id="hiddenId"></s:hidden>
			<s:textarea name="commentContent" rows="10" cols="30"></s:textarea>
		</s:form>
	</div>
	
	<div id="loginDiv" title="登录管理员" style="display: none">
		<s:form namespace="/" action="moodAction_login" id="loginForm">
			<s:textfield name="loginPwd"></s:textfield>
		</s:form>
	</div>




	<script type="text/javascript">
	$(function(){
		/*登录管理员操作*/
		
		 $('.loginPattern').on('click',function(){
			 $( "#loginDiv" ).dialog({
				  left:200,
				  top:200,
				  width:300,
			      height:200,
			      buttons: {
			        "登录": function() {
			        	document.getElementById("loginForm").submit();
			        },
			        取消: function() {
			          $( this ).dialog( "close" );
			        }
			      }
			 });
		 });
		
		
		
		 /*发表心情操作*/
		 $('#writeMood').on('click',function(){
				 $( "#sendMood" ).dialog({
				      height:300,
				      buttons: {
				        "发表": function() {
				        	document.getElementById("sendMoodForm").submit();
				        },
				        取消: function() {
				          $( this ).dialog( "close" );
				        }
				      }
				 });
		    });

		
		
		 /*发表留言操作*/
		 $('.replyMood').on('click',function(){
			 var moodId = $(this).val();
				document.getElementById("hiddenId").value=moodId;
				 $( "#replyMoodDiv" ).dialog({
				      height:300,
				      buttons: {
				        "发表": function() {
				        	document.getElementById("replyMoodForm").submit();
				        },
				        取消: function() {
				          $( this ).dialog( "close" );
				        }
				      }
				 });
		 });

		
			


		 
	/*结束*/
	});
	</script>




</body>
</html>
