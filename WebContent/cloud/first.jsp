<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>first.jsp페이지!!</h3>
	<jsp:forward page="second.jsp"/>
	<p>=======first.jsp페이지=======
	<%-- forward액션태그 사용후기: 주소창에는 first.jsp로 끝난채로 유지가 되고있으면서 내용이 second.jsp로 되어있다. --%>
</body>
</html>