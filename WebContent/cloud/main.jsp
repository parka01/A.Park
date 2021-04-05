<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>A.Park</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="cloud/custom.css">	
  
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Lora:wght@700&display=swap" rel="stylesheet">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
	<%@ include file="menu.jsp"%>

	<div class="row justify-content-end" style="float: right; margin-right: 100px; margin-top: 250px;">
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

	<%-- 토스트창 --%>
	<div class="d-flex justify-content-end">
	
	  <div class="toast" data-autohide="false">
	    <div class="toast-header">
	     <img src="img/miniLogo.png" class="rounded mr-2" alt="logo">
	      <p class="mr-auto text-mute"><strong>A.Park</strong>에 오신것을 환영합니다!  </p>
	      <small class="text-muted">  5 mins ago</small>
	      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
	    </div>
	    <div class="toast-body">
	      	S/S21 새로운 신상품이 추가되었습니다!
	    </div>
	  </div>
	</div>
	<%-- 토스트창 끝부분 --%>


	<br><br><br>
	
	<div class="row">
		<div class="col-8 offset-4">
		 <font size="2" color=#777879>A. Park is a great place where you can find your comforts for the life for you and your specials.
		Simply choose collections we already picked for you.
		It will take you to cozy world just like A. Park</font>
		</div>
	</div>
	
	<%-- 캐러셀 시작 --%>
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	  <ol class="carousel-indicators">
	    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	  </ol>
		  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img class="d-block w-100" src="img/main.jpeg" alt="First slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="img/main.jpeg" alt="Second slide">
			    </div>
			    <div class="carousel-item">
			      <img class="d-block w-100" src="img/main.jpeg" alt="Third slide">
			    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
	</div>
	<%-- 캐러셀 끝 --%>
	<br>
	<%-- 카드시작 --%>
	<div class="card " style="max-width: 100%;">
	<div class="row">
			<div class="col-5">
			  <img class="card-img-top" src="img/theme1.jpg" alt="Card image">
			</div> 
			
			<div class="col-7">
				 <div class="card-body">
				    <h4 class="card-title">Blush dream</h4>
				    <p class="card-text">Some example text.</p>
				    <a href="#" class="btn btn-primary">Shop this theme</a>
				</div>
			</div> 
	</div>
	</div>
	<%-- 카드 끝 --%>
	
	<br>
	<%-- 카드시작 --%>
	<div class="card " style="max-width: 100%;">
	<div class="row">
			<div class="col-5">
			  <img class="card-img-top" src="img/ddd.jpg" alt="Card image">
			</div> 
			
			<div class="col-7">
				 <div class="card-body">
				    <h4 class="card-title">Blush dream</h4>
				    <p class="card-text">Some example text.</p>
				    <a href="#" class="btn btn-primary">Shop this theme</a>
				</div>
			</div> 
	</div>
	</div>
	<%-- 카드 끝 --%>
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