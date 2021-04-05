<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>A.Park</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="custom.css">	
  
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Lora:wght@700&display=swap" rel="stylesheet">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<h1>고객페이지 연결확인!!</h1>
<%@ include file="menu.jsp"%>
<img src="../img/contact.png" style="width:100%;">
<div class="row justify-content-end" style="float: right; margin-right: 100px; margin-top: 50px;">
		<div id="mydiv">
			<div id="mydivheader">Drag to move</div>
			  <c:choose>
					<c:when test="${empty sessionId}">
							<a class="nav-link text-mute" href="<c:url value="cloud/connectionTest.jsp"/>">Login</a>
					</c:when>		
					<c:otherwise>
							[<%=sessionId%>님]
							<a class="nav-link text-mute" href="<c:url value="/member/logoutMember.jsp"/>"><em>Logout</em></a>
							<a class="nav-link text-mute" href="<c:url value="/member/updateMember.jsp"/>">Setting</a>
					</c:otherwise>
				</c:choose>
			  <a><p>상품후기</a>
		  </div> 
	</div>
<p>고객문의
<p>A.Park_customer@apark.com
<br>
<p>회원탈퇴신청
<p>A.Park_account@apark.com
<br>
<p>미디어 홍보 및 언론매
<p>A.Park_press@apark.com
<br>
<p>주소
<p>부산 강서구 에이팍대로 21 
<br>
<p>전화번호:
<p>051-225-9642
<%@ include file="footer.jsp"%>

<script>
		$(document).ready(function(){
		  $('.toast').toast('show');
		});
	</script>
	<script>
	dragElement(document.getElementById("mydiv"));
	
	function dragElement(elmnt) {
	  var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
	  if (document.getElementById(elmnt.id + "header")) {
	    document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
	  } else {
		  elmnt.onmousedown = dragMouseDown;
	  }
	
	  function dragMouseDown(e) {
	    e = e || window.event;
	    e.preventDefault();
	    pos3 = e.clientX;
	    pos4 = e.clientY;
	    document.onmouseup = closeDragElement;
	    document.onmousemove = elementDrag;
	  }
	
	  function elementDrag(e) {
	    e = e || window.event;
	    e.preventDefault();
	    pos1 = pos3 - e.clientX;
	    pos2 = pos4 - e.clientY;
	    pos3 = e.clientX;
	    pos4 = e.clientY;
	    elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
	    elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
	  }
	
	  function closeDragElement() {
	    document.onmouseup = null;
	    document.onmousemove = null;
	  }
	}
	</script>
</body>
</html>