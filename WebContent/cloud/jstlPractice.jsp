<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="melong"%>
<html>
	<head>
		<title>JSTL LANGUAGE TEST PAGE</title>
	</head>
	<body>
		<melong:out value="JSTL Core태그를 라이브러리에서 송출하여 melong을 prefix값으로 지정하여 시험구동"/>
		
		<%-- JSTL의 숨겨진 기능을 사용해보자! --%>
		<melong:forEach var="whateverIWant" begin="2" end="20" step="3">
			<melong:out value="${whateverIWant}"/>
		</melong:forEach>
		<%-- JSTL태그 사용후기:for문 없이 간단하게 사용하기 좋은 기능이라고 생각한다. --%>
		<%-- out이라는 간단한 태그명령어로 출력을 해준다는점을 습득 --%>
	</body>
</html>