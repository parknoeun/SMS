<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- ���  --%>
<jsp:include page="../include/header.jsp" />
<script type="text/javascript">
<!--
$(function(){
	//	��й�ȣ���� ����Ű�� �Է��ϸ� �α��� ��ư Ʈ����ó��
    $("form #pwd").keydown(function(event){
       if(event.keyCode == 13){
    	 //  alert("�α���");
    	   $("body").trigger("focusout");
            $("#loginBtn").trigger("click");
       }
     });	
	
	//  �Է� ���� ó��	
	$("form").submit(function(){
		
		if ($("form #id").val().length <= 0) {
			alert("���̵� �Է��ϼ���");
			$("form #id").trigger("focus");
			return false;
		}
		
		if ($("form #pwd").val().length <= 0) {
			alert("��й�ȣ�� �Է��ϼ���");
			$("form #pwd").trigger("focus");
			return false;
		}
		
		return true;
	});
});
//-->
</script>

<body>
	<div id="login_wrapper">
		<!-- login -->
		<h1 class="logo">
			<img src="../images/top/logo.gif" alt="���ûSMS" border="0" /></a>
		</h1>
		<div class="login_box">
			<h3>
				<img src="../images/login/txt_login.gif" />
			</h3>
			<form action="../LoginAction.ac" method="post">
				<fieldset>
					<legend>�α��������Է�</legend>
					<p class="id">
						<label for="id"><img src="../images/login/txt_id.gif"
							alt="���̵�" /></label> <input type="text" id="id" name="id" value="" />
					</p>
					<p class="pw">
						<label for="pwd"><img src="../images/login/txt_ow.gif"
							alt="��й�ȣ" /></label> <input type="password" id="pwd" name="pwd" value="" />
					</p>
					<p class="btnLogin">
						<input type="image" src="../images/login/btn_login.gif" alt="�α���" />
					</p>
					<p class="id_send">
						<input type="checkbox" />���̵� ����
					</p>
				</fieldset>
			</form>
			<p class="memberinfo">
				<a href=""><img src="../images/login/btn_find.gif" alt="���̵���ã��" /></a><a
					href="./join.jsp" id="loginBtn"><img src="../images/login/btn_join.gif"
					alt="ȸ������" /></a>
			</p>
		</div>
	</div>
	<div id="footer_wrap">
		<div class="footer">Ǫ�Ϳ���</div>
	</div>
</body>
</html>