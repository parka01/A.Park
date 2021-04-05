<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- uri속성:JSTL의 Core태그 라이브러리 위 --%>
<%-- JSTL을 사용하려면 WebContent/WEB-INF/lib/디렉터리위치에 jstl.jar라이브러리 파일이 있어야 한다. --%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>

<nav class="navbar navbar-expand">
	<div class="container-fluid">

		<div>
			<a class="text-decoration-none" href="<c:url value="/heart.jsp"/>">
			<h1 id="logo" >A.</h1>
			<h1 id="logo">Park</h1>
		</a>
		</div>
	
		<div>
			<ul class="navbar-nav"> 
				<li class="nav-item">
					<a class="nav-link text-mute" href="<c:url value="/cloud/contact.jsp"/>">Contact</a>
				</li>
				<li class="nav-item">
					<a class="nav-link text-mute" href="<c:url value="/art/gallery.jsp"/>">Gallery</a>
				</li>
				<li class="nav-item">
					<a class="nav-link text-mute" href="<c:url value="/products.jsp"/>">about</a>
				</li>		
			</ul>
		</div>
		
	</div>
</nav>
