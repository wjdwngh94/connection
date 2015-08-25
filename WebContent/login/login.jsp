<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- login.jsp -->
<%@include file="../top.jsp"%>
<%
	//쿠키 확인
	Cookie[] ckList = request.getCookies(); //모든 쿠키를 가져온다.
	String ck_name = null, ck_value = null;
	if (ckList != null) { //쿠키가 있으면
		for (int i = 0; i < ckList.length; ++i) { //반복을 돌면서 원하는 쿠키를 찾는다.
			if (ckList[i].getName().equals("saveId")) {
				ck_value = ckList[i].getValue(); //값과 이름을 만들어둔 변수에 넣는다.
				ck_name = ckList[i].getName();
				break;
			}
		}
	}
	//ck_name, ck_value
%>
<script type="text/javascript">
	function loginCheck() {
		if (!f.id.value) {
			alert("아이디를 입력하세요.");
			f.id.focus();
			return;
		}
		if (!f.pw.value) {
			alert("비밀번호를 입력하세요.");
			f.pw.focus();
			return;
		}
		document.f.submit();
	}
</script>
<div align="center">
	<h1>
		ck_name :
		<%=ck_name%>, ck_value :
		<%=ck_value%></h1>
	<br> <img src="../img/bottom.gif" width="570" height="40"
		border="0" alt=""> <br>
	<p />
	<img src="../img/tm_login.gif" width="100" height="13" border="0"
		align="center" alt="회원 로그인">
	<form name="f" action="login_ok.jsp" method="post">
		<table width="60%" align="center" border="0" height="120">
			<tr>
				<td align="right" width="30%"><img src="../img/id01.gif"
					width="28" height="11" border="0" alt="아이디"> &nbsp;&nbsp;</td>
				<td width="40%"><input type="text" name="id"></td>
				<td rowspan="2" width="30%" valign="middle"><a
					href="javascript:loginCheck()"> <img src="../img/bt_login.gif"
						border="0" alt="로그인">&nbsp;&nbsp;<br>
				</a> <nobr>
						<!-- br태그가 적용되지 않는 구간 -->
						<input type="checkbox" name="saveId"> <font face="굴림"
							size="2">아이디 기억하기</font>
					</nobr></td>
			</tr>
			<tr>
				<td align="right"><img src="../img/pwd.gif" width="37"
					height="11" border="0" alt="비밀번호"> &nbsp;&nbsp;</td>
				<td width="40%"><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="3" align="center"><a
					href="javascript:openMember()"> <img src="../img/bt_join.gif"
						width="60" height="22" border="0" alt="회원가입">
				</a> <a href="javascript:searchMember('id')"> <img
						src="../img/bt_search_id.gif" width="60" height="22" border="0"
						alt="아이디찾기">
				</a> <a href="javascript:searchMember('pw')"> <img
						src="../img/bt_search_pw.gif" width="60" height="22" border="0"
						alt="비밀번호 찾기">
				</a></td>
			</tr>
		</table>
	</form>
</div>
<%@include file="../bottom.jsp"%>
