<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!--  パスをコンテキストルートを含めた形に変換 -->
<spring:url value="/css" var="css" />
<spring:url value="/js" var="js" />
<spring:url value="/diary" var="diaryUrl" />
<spring:url value="/images" var="images" />
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>日記の編集</title>
<link rel="stylesheet" href="${css}/editDiary.css" />
</head>
<body>

<div class="main">
	<form:form action="" method="post" modelAttribute="diary">

			気分・カテゴリ：
			<select name="feeling" class="in">
			 <option value="&#x1f600;">&#x1f600;</option>
			 <option value="&#x1f923;">&#x1f923;</option>
			 <option value="&#x1f637;">&#x1f637;</option>
			 <option value="&#x1f922;">&#x1f922;</option>
			 <option value="&#x1f632;">&#x1f632;</option>
			 <option value="&#x1f630;">&#x1f630;</option>
			 <option value="&#x1f62d;">&#x1f62d;</option>
			 <option value="&#x1f621;">&#x1f621;</option>
			 <option value="&#x1f374;">&#x1f374;</option>
			 <option value="&#x1f3c3;">&#x1f3c3;</option>
			 <option value="&#x2708;">&#x2708;</option>
			 <option value="&#x1f457;">&#x1f457;</option>
			 <option value="&#x1f3b6;">&#x1f3b6;</option>
			 <option value="&#x1f6d2;">&#x1f6d2;</option>
			 <option value="&#x1f389;">&#x1f389;</option>
			 <option value="&#x1f3e5;">&#x1f3e5;</option>
			 <option value="&#x1f370;">&#x1f370;</option>
			</select><br>

　　　　　　　　　　　<form:errors path="title" style="color:red;"/><br>
			タイトル：<form:input path="title"  class="in"/><br>

                  <form:errors path="contents" style="color:red;"/><br>
　　　　　　本文：<form:textarea path="contents" cols="45" rows="40" class="in"/><br>


		<input type="submit" class="btn-square-so-pop"/>
	</form:form>
</div>

<p><a href="${diaryUrl}"><img src="${images}/left-arrow.png" alt="戻る" /></a></p>
</body>
</html>