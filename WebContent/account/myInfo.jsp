<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="kr.go.police.account.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	// requset �� ���� ���� �����͸� �����´�.
	UserBean user = (UserBean) request.getAttribute("userData");
%>
<c:set var="user" value="<%=user%>" />
<%-- ���  --%>
<jsp:include page="../modules/header.jsp" />
<script>
$(function() {
	// ���� Ȯ�� ��ư
	$("#modifyBtn").click(function() {
		if (confirm("����������� ���� �Ͻðڽ��ϱ�?")) {
			$("form").submit();
		}
	});
});
</script>
<body>
	<div id="wrapper">
		<%-- ��ܸ޴�  --%>
		<jsp:include page="../modules/topmenu.jsp" />

		<div id="contents">
			<%-- ���̵� �޴�  --%>
			<jsp:include page="../modules/sidebox.jsp" />
			<div class="boderWrap">
				<h3>
					<img src="./images/boder/tit_member.gif" alt="ȸ����������" />
				</h3>
				<form action="./AdminModifyUserAction.ac" method="post">
					<input value="<%=request.getParameter("index")%>" id="index"
						name="index" type="hidden" />
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr style="border-top: #258abf 2px solid;">
								<td style="background: #f4f4f4;"><strong>�̸�</strong></td>
								<td class="tite"><input type="text" id="name" name="name" value="${user.name}"
									title="��Ȯ�� �̸��� �Է��ϼ���" class="none" />
								</td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>���̵�</strong></td>
								<td class="tite"><input type="text" id="id" name="id"
									value="${user.id}" disabled="disabled" class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>������</strong></td>
								<td class="tite"><input type="text" value="${user.psName}"
									id="psname" name="psname" title="��Ȯ�� ���������� �Է��ϼ���" class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>�μ�</strong></td>
								<td class="tite"><input type="text" id="deptName"
									value="${user.deptName}" name="deptName" title="��Ȯ�� �μ����� �Է��ϼ���"
									class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>�޴��ȣ</strong></td>
								<td class="tite"><input value="${user.phoneTop1}" id="phone1"
									name="phone1" type="text"
									style="width: 60px; margin-left: 10px;" class="phone none" /> - <input
									value="${user.phoneMiddle1}" id="phone2" name="phone2" type="text"
									style="width: 60px;" class="phone none" /> - <input
									value="${user.phoneBottom1}" id="phone3" name="phone3" type="text"
									style="width: 60px;" class="phone none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>���</strong></td>
								<td class="tite"><input id="grade" name="grade"
									title="����� �Է��ϼ���" type="text" class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>�̸���</strong></td>
								<td class="tite"><input id="email" name="email"
									value="${user.email}" title="�̸����� �Է��ϼ���" type="text"
									class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>���</strong></td>
								<td class="tite">
									<select style="height: 20px; margin-left: 10px; width: 133px;" id="userClass" name="userClass">
										<option ${user.userClass == 1  ? ' selected="selected" ' : '' }
										value="1">�Ϲݻ����</option>
										<option ${user.userClass == 2  ? ' selected="selected" ' : '' }
										value="2">�����������</option>
										<option ${user.userClass == 3  ? ' selected="selected" ' : '' }
										value="3">û�����</option>
										<option ${user.userClass == 0  ? ' selected="selected" ' : '' }
										value="0">������</option>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
				<div class="btn">
					<a href="#" id="modifyBtn"><img
						src="./images/notice/register_btn.gif" alt="���" /></a><a href="#"><img
						src="./images/notice/cancel_btn.gif" alt="���" /></a>
				</div>
			</div>
		</div>
		<div id="footer">Ǫ�Ϳ���</div>
	</div>

</body>


</html>