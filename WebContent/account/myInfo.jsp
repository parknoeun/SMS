<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="kr.go.police.account.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	// requset 로 부터 유저 데이터를 가져온다.
	UserBean user = (UserBean) request.getAttribute("userData");
%>
<c:set var="user" value="<%=user%>" />
<%-- 헤더  --%>
<jsp:include page="../modules/header.jsp" />
<script>
$(function() {
	// 수정 확인 버튼
	$("#modifyBtn").click(function() {
		if (confirm("사용자정보를 수정 하시겠습니까?")) {
			$("form").submit();
		}
	});
});
</script>
<body>
	<div id="wrapper">
		<%-- 상단메뉴  --%>
		<jsp:include page="../modules/topmenu.jsp" />

		<div id="contents">
			<%-- 사이드 메뉴  --%>
			<jsp:include page="../modules/sidebox.jsp" />
			<div class="boderWrap">
				<h3>
					<img src="./images/boder/tit_member.gif" alt="회원정보변경" />
				</h3>
				<form action="./AdminModifyUserAction.ac" method="post">
					<input value="<%=request.getParameter("index")%>" id="index"
						name="index" type="hidden" />
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr style="border-top: #258abf 2px solid;">
								<td style="background: #f4f4f4;"><strong>이름</strong></td>
								<td class="tite"><input type="text" id="name" name="name" value="${user.name}"
									title="정확한 이름을 입력하세요" class="none" />
								</td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>아이디</strong></td>
								<td class="tite"><input type="text" id="id" name="id"
									value="${user.id}" disabled="disabled" class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>경찰서</strong></td>
								<td class="tite"><input type="text" value="${user.psName}"
									id="psname" name="psname" title="정확한 경찰서명을 입력하세요" class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>부서</strong></td>
								<td class="tite"><input type="text" id="deptName"
									value="${user.deptName}" name="deptName" title="정확한 부서명을 입력하세요"
									class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>휴대번호</strong></td>
								<td class="tite"><input value="${user.phoneTop1}" id="phone1"
									name="phone1" type="text"
									style="width: 60px; margin-left: 10px;" class="phone none" /> - <input
									value="${user.phoneMiddle1}" id="phone2" name="phone2" type="text"
									style="width: 60px;" class="phone none" /> - <input
									value="${user.phoneBottom1}" id="phone3" name="phone3" type="text"
									style="width: 60px;" class="phone none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>계급</strong></td>
								<td class="tite"><input id="grade" name="grade"
									title="계급을 입력하세요" type="text" class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>이메일</strong></td>
								<td class="tite"><input id="email" name="email"
									value="${user.email}" title="이메일을 입력하세요" type="text"
									class="none" /></td>
							</tr>
							<tr>
								<td style="background: #f4f4f4;"><strong>등급</strong></td>
								<td class="tite">
									<select style="height: 20px; margin-left: 10px; width: 133px;" id="userClass" name="userClass">
										<option ${user.userClass == 1  ? ' selected="selected" ' : '' }
										value="1">일반사용자</option>
										<option ${user.userClass == 2  ? ' selected="selected" ' : '' }
										value="2">과서무사용자</option>
										<option ${user.userClass == 3  ? ' selected="selected" ' : '' }
										value="3">청사용자</option>
										<option ${user.userClass == 0  ? ' selected="selected" ' : '' }
										value="0">관리자</option>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
				<div class="btn">
					<a href="#" id="modifyBtn"><img
						src="./images/notice/register_btn.gif" alt="등록" /></a><a href="#"><img
						src="./images/notice/cancel_btn.gif" alt="취소" /></a>
				</div>
			</div>
		</div>
		<div id="footer">푸터영역</div>
	</div>

</body>


</html>