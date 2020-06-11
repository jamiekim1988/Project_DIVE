<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="/resources/css/user/updateUser.css">
	<div class="choice-sector">
		<div class="choice-sector-content">
			<section class="choice">
				<div class="choice_btn">
					<span class="login_sector"> <a href="/user/myPage"> <input
							type="button" class="login_btn" value="M Y P A G E">
					</a>
					</span> <span class="signup_sector"> <a href="/user/userLogout">
							<input type="button" class="login_btn" value="L O G O U T">
					</a>
					</span>
				</div>
			</section>
			<section class="logo">
				<div class="logo_image">
					<i class="fas fa-universal-access"></i>
				</div>
			</section>
			<section class="customer">
				<div class="customer_inform">
					<form action="/user/updateUser" method="post">
						<div class="form-group">
							<label for="userId">아이디</label> <input class="form-control"
								type="text" readonly='readonly' value='${user.userId}' name="userId">
						</div>
						<br />
						<div class="form-group">
							<label for="userName">이름</label> <input class="form-control"
								type="text" readonly='readonly' value='${user.name}' name="name">
						</div>
						<br />
						<div class="form-group">
							<label for="userName">닉네임</label> <input class="form-control"
								type="text" readonly='readonly' value='${user.nickName}' name="nickName">
						</div>
						<br />
						<div class="form-group">
							<label for="birthday">생년월일</label> <input class="form-control"
								type="text" readonly='readonly' value='${user.birthday}' name="birthday">
						</div>
						<br />
						<div class="form-group">
							<label>성별</label> <input class="form-control" type="text"
								readonly='readonly' value='${user.sex}' name="sex">
						</div>
						<br />
						<div class="form-group">
							<label for="address">주소</label> <input class="form-control"
								type="text" value='${user.address}' name="address">
						</div>
						<br />
						<div class="form-group">
							<label for="mPhone1">연락처</label> <input class="form-control"
								type="text" value='${user.phone}' name="phone">
						</div>
						<br />
						<div class="form-group">
							<label for="email01">이메일</label> <input class="form-control"
								type="text" value='${user.email}' name="email">
						</div>

						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />

						<button type="submit" data-oper='modify'>수정 완료</button>
					</form>
				</div>
				<a href="/"><button class="cancle">HOME</button></a> <br />
			</section>
		</div>
	</div>
<%@ include file="../include/footer.jsp" %>
<script src="/resources/js/updateUser.js"></script>