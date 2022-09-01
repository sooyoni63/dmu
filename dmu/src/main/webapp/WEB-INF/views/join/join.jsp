<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D MUSEUM</title>
<style>
@font-face {
    font-family: 'Geogrotesque';
    src: local('Geogrotesque Thin'), local('Geogrotesque-Thin'),
        url('GeogrotesqueCyr-Thin.woff2') format('woff2'),
        url('GeogrotesqueCyr-Thin.woff') format('woff'),
        url('GeogrotesqueCyr-Thin.ttf') format('truetype');
    font-weight: 100;
    font-style: normal;
  }
@font-face {
	font-family: 'Geogrotesque';
	src: local('Geogrotesque Light'),
		local('/myspring/resources/font/Geogrotesque-Light'),
		url('/myspring/resources/font/GeogrotesqueCyr-Light.woff2')
		format('woff2'),
		url('/myspring/resources/font/GeogrotesqueCyr-Light.woff')
		format('woff'),
		url('/myspring/resources/font/GeogrotesqueCyr-Light.ttf')
		format('truetype');
	font-weight: 300;
	font-style: normal;
}

* {
	font-family: "Geogrotesque";
}

div.container h3 {
	font-size: 3rem !important;
	text-align: center;
	line-height: 3.2rem;
	letter-spacing: -0.08em;
	font-weight: 500;
}

div.join_style {
	display: flex;
	justify-content: center;
	align-items: center;
}

form[name="joinFrom"] {
	width: 626px;
}

fieldset.loginInformation, fieldset.individualInformation {
	border: none;
}

fieldset.loginInformation span.checkpoint::before, fieldset.individualInformation span.checkpoint::before
	{
	content: "*";
	display: inline-block;
	color: #da2a21;
	font-size: 15px;
	font-weight: bold;
	margin-right: 5px;
}

fieldset.loginInformation>legend, fieldset.individualInformation>legend
	{
	float: left;
	font-size: 1.5rem;
	font-weight: 400;
	line-height: 1.42;
	letter-spacing: -0.2rem;
	margin-bottom: 20px;
}

fieldset.loginInformation>span, fieldset.individualInformation>span {
	float: right;
	font-size: 16px;
	color: #484848;
	font-weight: 500;
	letter-spacing: -0.08em;
	align-items: center;
}

div.loginDetail, div.joinDetail {
	clear: both;
}

div.loginDetail ul, div.joinDetail ul {
	list-style: none;
	padding: 0;
}

div.loginDetail ul li, div.joinDetail ul li {
	margin-top: 30px;
}

div.loginDetail ul li>label, div.joinDetail ul li>label {
	display: block;
	font-size: 0.8975rem;
	color: #666;
	letter-spacing: -0.075rem;
}

div.loginDetail ul li>label.checkpoint::after, div.joinDetail ul li>label.checkpoint::after {
	content: "*";
	display: inline-block;
	color: #da2a21;
	font-size: 13px;
	font-weight: bold;
	line-height: 2px;
	margin-left: 5px;
}

div.loginDetail li:first-child div, div.loginDetail li>div {
	display: flex;
	justify-content: space-between;
	height: 60px;
}

div.loginDetail div input {
	border: 0.5px solid #dcdcdc;
	width: 23.5rem;
	padding: 16px;
	font-size: 15px;
	color: black;
	font-weight: 400;
}

div.loginDetail div input:not(div.loginDetail li:first-child input) {
	width: 100%;
}

div.loginDetail div input::placeholder, input#name::placeholder {
	color: #999999;
	vertical-align: center;
	font-weight: 400;
}

div.loginDetail div {
	margin-top: 5px;
}

button#idCheck {
	background-color: black;
	color: white;
	width: 10.675rem;
	font-size: 15px;
	font-weigth: 300;
	letter-spacing: -0.08rem;
}

button#idCheck:hover {
	border: 0.5px solid black;
	background: white;
	color: black;
	cursor: pointer;
}

/******************** 개인정보 ***********************/
fieldset.individualInformation {
	margin: 20px 0 0 0;
	width: 626px;
	box-sizing: border-box;
}

input#name, div.joinDetail input:not(input[type="radio"]):not(div.addrSimple input)
	{
	height: 100%;
	border: 0.5px solid #dcdcdc;
	font-size: 15px;
	color: black;
	padding: 0 16px;
	box-sizing: border-box;
	font-weight: 400;
	width: 30%;
}

input#name {
	width: 100%;
}

div.emailTable, div.phoneTable, div.birthTable {
	display: flex;
	height: 60px;
	justify-content: space-between;
	align-items: center;
}

div.emailTable, div.phoneTable, div.birthTable, div.addrTable, div.nameTable,
	div.genderTable {
	margin-top: 10px;
}

div.nameTable {
	height: 60px;
}

div.emailTable input::placeholder {
	color: #999999;
	vertical-align: center;
	font-weight: 400;
}

div.emailTable input#email2 {
	margin-right: 20px;
}

select#email3 {
	width: 30%;
	height: inherit;
	font-size: 15px;
	padding: 0 16px;
}

div.joinDetail select {
	width: 30%;
	height: inherit;
	font-weight: 500;
	font-size: 15px;
	border: 0.5px solid #dcdcdc;
	padding: 0 16px;
}

div.addrTable {
	height: 40px;
	display: flex;
	justify-content: space-between;
}

div.addrTable input {
	width: 155px;
}

div.addrTable input::placeholder {
	font-weight: 400;
	font-size: 12px;
	color: #999999;
}

div.addrTable>input {
	margin-right: 20px;
	width: 150px;
}

div.addrSimple {
	width: 100%;
	display: flex;
	justify-content: space-between;
	height: 40px;
}

div.addrSimple input {
	height: 100%;
	border: 0.5px solid #dcdcdc;
	font-size: 15px;
	color: black;
	padding: 0 16px;
	box-sizing: border-box;
	font-weight: 400;
	width: 72%;
}

button#addressCheck {
	width: 100px;
	background: black;
	color: white;
	border: 0.5px solid black;
	font-size: 14px;
	letter-spacing: -0.08rem;
}

button#addressCheck:hover {
	background: white;
	color: black;
	border: 0.5px solid black;
	cursor: pointer;
}

input#addr2 {
	width: 100%;
	height: 40px;
	margin-top: 10px;
}

input#addr2::placeholder {
	color: #999999;
	font-size: 14px;
}

div.checkBtnList {
	display: flex;
	justify-content: space-between;
}

div.checkBtnList button {
	width: 47%;
	height: 60px;
	font-size: 16px;
	margin-bottom: 15vh;
	margin-top: 5vh;
}

button#cancle {
	background: white;
	border: 0.5px solid black;
}

button#cancle:hover {
	background: #888888;
	border: 0.5px solid #888888;
	color: white;
	font-weight: 400;
	cursor: pointer;
}

button#joinOk {
	background: black;
	border: 0.5px solid black;
	color: white;
	cursor: pointer;
}

button#joinOk:hover {
	background: white;
	border: 0.5px solid black;
	color: black;
}

div.customerTable {
	margin-top: 15px;
}
/** radio 커스텀 **/
input[name="customerType"], input[name="gender"] {
	display: none;
}

input[name="customerType"]+label, input[name="gender"]+label {
	display: inline-flex;
	justify-content: center;
	align-items: center;
	position: relative;
	color: #888888;
	margin-right: 15px;
}

input[name="customerType"]+label::before, input[name="gender"]+label::before
	{
	content: "";
	border: 0.5px solid #888888;
	background: white;
	width: 25px;
	height: 25px;
	border-radius: 50%;
	display: inline-block;
	box-sizing: border-box;
	margin-right: 5px;
}

input[name="customerType"]:checked+label, input[name="gender"]:checked+label
	{
	color: black;
}

input[name="customerType"]:checked+label::before, input[name="gender"]:checked+label::before
	{
	content: "";
	border: 0.5px solid black;
	background: white;
	width: 25px;
	height: 25px;
	border-radius: 50%;
	display: inline-block;
	box-sizing: border-box;
	margin-right: 5px;
}

input[name="customerType"]:checked+label::after, input[name="gender"]:checked+label::after
	{
	content: "";
	border: 0.5px solid #dcdcdc;
	background: black;
	width: 12px;
	height: 12px;
	border-radius: 50%;
	position: absolute;
	top: 12.5px;
	left: 12px;
	transform: translate(-50%, -50%);
	margin-right: 5px;
}
input#email2 {
	background : white;
}
input#email2:disabled {
	background : #eeeeee;
}
/******************** 전체 화면 설정 ***********************/

main.join div.section {
	position: relative;
	min-width: 1200px;
}

div.joinContainer {
	position: absolute;
	left: 50%;
	transform: translate(-50%, 0);
}

/******************** Popup SetUp***********************/
.background_join {
	position: fixed;
	width: 100vw;
	height: 100vh;
	background-color: rgba(0, 0, 0, 0.7);
	opacity: 0;
	z-index: -1;
}

.window_join {
	width: 100vw;
	height: 100vh;
	position: relative;
	top: 0;
	left: 0;
	min-width: 1200px;
}

.popup_join {
	width: 400px;
	height: 170px;
	background: white;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -30%);
	text-align: center;
	z-index: -1;
}

#popup_joinGuide {
	margin: 2rem 0;
	letter-spacing: -0.08rem;
	color: #4b4b4b;
}

#popup_joinOk {
	width: 85%;
	height: 50px;
	border: none;
	background: black;
	color: white;
	font-size: 14px;
	letter-spacing: -0.085rem;
	font-weight: 500;
}

.show_join {
	opacity: 1;
	z-index: 10;
	transition: all 0.3s;
}

.show_join .popup_join {
	z-index: 10;
	transform: translate(-50%, -50%);
	transition: all 0.3s;
}
</style>
<script src="http://localhost:9000/dmu/resources/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$(document).ready(function() {
		/********* function list *********/
		
		function warningCheck(check, obj, coment){
			let style_warning = "<div class = 'check_join'>"
				style_warning += "<img src = 'http://localhost:9000/dmu/resources/images/warning.png' class = 'join_warning'>";
				style_warning += "<span></span></div>";
			if(check == true){
				
				/* $(".check_join").addClass(name);
				if(document.querySelector(name) ) */
				
				//$(".check_join").remove();
				obj.next().remove();
				obj.after(style_warning);
				
				obj.next().children(".join_warning").css("height", "20px").css("margin-right", "10px");
				//$(".join_warning + span").text(coment).css({"color" : "#D92121", "letter-spacing" : "-0.08rem"});
				obj.next().children(".join_warning + span").text(coment).css({"color" : "#D92121", "letter-spacing" : "-0.08rem"});
				$(".check_join").css({"height": "40px", "display" : "flex", "align-items" : "center", "justify-content" : "flex-start"});
			}else if(check == 'ok'){
				
				//$(".check_join").remove();
				obj.next().remove();
				obj.after(style_warning);
				
				obj.next().children(".join_warning").remove();

				//$(".check_join span").text(coment).css({"color" : "black", "letter-spacing" : "-0.08rem",
				obj.next().children("span").text(coment)
						.css({"color" : "black", "letter-spacing" : "-0.08rem", "font-weight" : "300"});
				$(".check_join").css({"height": "40px", "display" : "flex", "align-items" : "center", "justify-content" : "flex-start"});
				
			}else{
				obj.next().remove();
			}
		}
		
		/********* address API *********/
		$("#addressCheck").click(function() {
			var themeObj = {
				searchBgColor : "#080808",
				queryTextColor : "#F8F8F8"
			};
			new daum.Postcode({
				theme : themeObj,
				oncomplete : function(data) {
					$("#zonecode").val(data.zonecode);
					$("#addr1").val(data.address);
				}
			}).open();
		});

		/********* email check *********/
		$("#email3").change(function() {
			if($(this).val() == "default"){
				$("#email2").val("");
				$("#email2").attr("disabled", false);
				$("#email2").focus();
			}else{
				$("#email2").val("");
				$("#email2").attr("disabled", true);
				$("#email2").val($(this).val());
			}
		});
		
		$("#email2").blur(function(){
			
			//email validation check
			let emailRule = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			let email = $("#email1").val()+"@"+$("#email2").val();
			if(!emailRule.test(email)){
				$("#email1").css("border", "0.5px solid red");
				$("#email2").css("border", "0.5px solid red");
				
				warningCheck(true, $(".emailTable"), "유효하지 않은 이메일 형식입니다.");
				return false;
			}else{
				$("#email1").css("border", "0.5px solid #dcdcdc");
				$("#email2").css("border", "0.5px solid #dcdcdc");
				
				warningCheck('ok', $(".emailTable"), "사용 가능한 이메일입니다.");
			}
		})

		/********* id check *********/
		$("#id").blur(function(){
			if($("#id").val() == ""){
				warningCheck(true, $(".idTable"), "아이디를 입력해 주세요.");
			}else{
				warningCheck(false, $(".idTable"), "");
			}
		});
		
		/********* password check *********/
		//비밀번호 유효성 체크
		let passRule = /^(?=.*[a-xA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{10,14}$/;
		$("#pass").blur(function(){;
			let password = $("#pass").val();
			if(!passRule.test(password)){
				warningCheck(true, $(".passTable"), "10~14자 영문, 숫자, 특수문자를 조합하여 입력해 주세요.");
			}else{
				warningCheck(false, $(".passTable"), "");
			}
		});
		//비밀번호 확인
		$("#passcheck").blur(function(){
			if($("#passcheck").val() != "" && $("#pass").val() != ""){
				if($("#passcheck").val() != $("#pass").val()){
					warningCheck(true, $(".passCheckTable"), "비밀번호가 일치하지 않습니다.");
				}else{
					warningCheck(false, $(".passCheckTable"), "");
				}
			}
		});
		
		/********* validation check *********/

		$("#joinOk").click(function() {
			if($("#id").val() == ""){
				warningCheck(true, $(".idTable"), "아이디를 입력해 주세요.");
				$("#id").focus();
				return false;
			}else if($("#pass").val() == "" || !passRule.test($("#pass").val())){
				warningCheck(true, $(".passTable"), "10~14자 영문, 숫자, 특수문자를 조합하여 입력해 주세요.");
				$("#pass").focus();
				return false;
			}else if($("#passcheck").val() == ""){
				warningCheck(true, $(".passCheckTable"), "비밀번호가 일치하지 않습니다.");
				$("#passcheck").focus();
				return false;
			}else if($("#name").val() == ""){
				warningCheck(true, $(".nameTable"), "이름을 입력해 주세요.");
				$("#name").focus();
				return false;
			}else if($("#email1").val() == "" || $("#email2").val() == ""){
				popup_setup("이메일을 입력해 주세요.", $("#email1"));
				return false;
			}else if($("#year").val() == "default" || $("#month").val() == "default" || $("#day").val() == "default"){
				popup_setup("생년월일을 선택해 주세요", $("#year"));
				return false;
			}else if($("#pnum2").val() == "" || $("#pnum3").val() == ""){
				popup_setup("휴대폰번호를 입력해 주세요", $("#pnum1"));
				return false;
			}else if($("#zonecode").val() == "" || $("#addr1").val() == ""){
				popup_setup("휴대폰번호를 입력해 주세요", $("#pnum1"));
				return false;
			}else if($("#addr3"))

		});

		/********* popup setup *********/
		function popup_setup(guideLine, obj) {
			$(".background_join").addClass("show_join");
			$(".window_join").addClass("show_join");
			$("#popup_joinGuide").text(guideLine);
			$("#popup_joinOk").click(function() {
				$(".background_join").removeClass("show_join");
				$(".window_join").removeClass("show_join");
				obj.focus();
			});
		}
	});
</script>
</head>
<body>
	<!-- <iframe src="header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe> -->
	<main class = "join">
		<div class = "section">
			<div class = "joinContainer">
				<div class = "container">
					<h3>회원가입</h3>
				</div>
				<div class="join_style">
					<form name="joinFrom" action="#" method="post">
						<fieldset class = "loginInformation">
							<legend>로그인&nbsp;&nbsp;정보</legend>
							<span class = "checkpoint">표시는 필수 입력 항목입니다.</span>
							<div class = "loginDetail">
								<ul>
									<li>
										<label class = "checkpoint">아이디</label> 
										<div class = "idTable">
											<div style = "margin : 0;">
												<input type="text" name="id" id = "id" placeholder = "아이디를 입력해주세요">
											</div>
											<button type = "button" id = "idCheck">중복체크</button>
										</div>
									</li>
									<li>
										<label class = "checkpoint">비밀번호</label>
										<div class = "passTable">
											<input type="password" name="pass" id = "pass" placeholder = "비밀번호를 입력해주세요" maxlength = "14">
										</div> 
									</li>
									<li>
										<label class = "checkpoint">비밀번호 확인</label> 
										<div class = "passCheckTable">
											<input type="password" id = "passcheck" placeholder = "비밀번호를 재입력해주세요" maxlength = "14">									
										</div>
									</li>
								</ul>
							</div>
						</fieldset>
						<fieldset class = "individualInformation">
							<legend>개인정보</legend>
							<span class = "checkpoint">표시는 필수 입력 항목입니다.</span>
							<div class = "joinDetail">
								<ul>
									<li>
										<label>회원&nbsp;유형</label> 
										<div class = "customerTable">
											<input type="radio" name="customerType" id = "local" checked = "checked">
											<label for = "local">내국인</label>
											<input type="radio" name="customerType" id = "foreign">
											<label for = "foreign">외국인</label>
										</div>
									</li>
									<li>
										<label class = "checkpoint">이름</label> 
										<div class = "nameTable">
											<input type="text" name="id" id= "name" placeholder = "이름을 입력해주세요">
										</div>
									</li>
									<li>
										<label class = "checkpoint">성별</label>
										<div class = "genderTable">
											<input type="radio" name = "gender" id = "m" checked="checked">
											<label for = "m">남자</label>
											<input type="radio" name = "gender" id = "f">
											<label for = "f">여자</label>
										</div>
									</li>
									<li>
										<label class = "checkpoint">이메일</label>
										<div class = "emailTable">
											<input type = "text" name = "email1" id = "email1" placeholder = "이메일">@
											<input type = "text" name = "email2" id = "email2">
											<select name = "email3" id = "email3">
												<option value = "default">직접입력
												<option value = "gmail.com">gmail.com
												<option value = "naver.com">naver.com
												<option value = "hanmail.com">hanmail.net
												<option value = "nate.com">nate.com								
											</select>
										</div>
									</li>
									<li>
										<label class = "checkpoint">생년월일</label>
										<div class = "birthTable">
											<select name = "year" id = "year">
												<option value = "default">선택
												<c:forEach var = "year_data" begin = "1901" end = "2008">
													<option value = "${ year_data }">${ year_data }
												</c:forEach>
											</select>
											<select name = "month" id = "month">
												<option value = "default">선택
												<c:forEach var = "month_data" begin = "1" end = "12">
													<option value = "${ month_data }">${ month_data }
												</c:forEach>
											</select>
											<select name = "day" id = "day">
												<option value = "default">선택
												<c:forEach var = "day_data" begin = "1" end = "31">
													<option value = "${ day_data }">${ day_data }
												</c:forEach>
											</select>
										</div>
									</li>
									<li>
										<label class = "checkpoint">휴대폰 번호</label>
										<div class = "phoneTable">
											<select name = "pnum1" id = "pnum1">
												<option value = "010">010
												<option value = "011">011
												<option value = "016">016
												<option value = "017">017
												<option value = "018">018
												<option value = "019">019
											</select>-
											<input type = "text" name = "pnum2" id = "pnum2" maxlength = "4" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">-
											<input type = "text" name = "pnum3" id = "pnum3" maxlength = "4" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">
										</div>
										
									</li>
									<li>
										<label class = "checkpoint">주소</label>
										<div class = "addrTable">									
											<input type = "text" name = "zonecode" id = "zonecode" placeholder = "우편번호">
											<div class = "addrSimple">
												<input type = "text" name = "addr1" id = "addr1">
												<button type = "button" id = "addressCheck">주소 찾기</button>
											</div>
										</div>
										<input type = "text" name = "addr2" id = "addr2" placeholder = "상세 주소 입력">
									</li>
								</ul>
							</div>
							<div class = "checkBtnList">
								<button type="button" id = "cancle">취소</button>
								<button type="button" id = "joinOk">가입하기</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<div class = "background_join">
			<div class = "window_join">
				<div class = "popup_join">
					<p id = "popup_joinGuide"></p>
					<button type = "button" id = "popup_joinOk">확인</button>
				</div>
			</div>
		</div>
	</main>
	<!-- <iframe src="footer.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe> -->
</body>
</html>