<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!--  パスをコンテキストルートを含めた形に変換 -->
<spring:url value="/css" var="css" />
<spring:url value="/js" var="js" />
<spring:url value="/korean" var="koreanUrl" />
<spring:url value="/images" var="images" />

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>語句登録</title>
<link rel="stylesheet" href="${css}/add.css" />
</head>
<body>


<div class="main">
<form:form action="" method="post" modelAttribute="korean">

                  <form:errors path="name" style="color:red;"/><br>
			単語：<form:input path="name" class="in"/><br>

                  <form:errors path="reading" style="color:red;"/><br>
			読み：<form:input path="reading" class="in"/><br>

                  <form:errors path="mean" style="color:red;"/><br>
			意味：<form:input path="mean" class="in"/><br>

			カテゴリ：
		　  <select name="category" class="in">
			   <option value="挨拶">挨拶</option>
			   <option value="天候">天候</option>
			   <option value="食べ物">食べ物</option>
			   <option value="生き物">生き物</option>
			   <option value="自然">自然</option>
			   <option value="家族・人">家族・人</option>
			   <option value="数字">数字</option>
			   <option value="色">色</option>
			   <option value="季節">季節</option>
			   <option value="日時・カレンダー">日時・カレンダー</option>
			   <option value="職業・会社">職業・会社</option>
			   <option value="趣味">趣味</option>
			   <option value="家・日用品">家・日用品</option>
			   <option value="病気・医療">病気・医療</option>
			   <option value="医療・装飾品">衣料・装飾品</option>
			   <option value="方向・位置">方向・位置</option>
			   <option value="動詞（動作）">動詞（動作）</option>
			   <option value="形容詞">形容詞</option>
			   <option value="前置詞・副詞">前置詞・副詞</option>
			   <option value="代名詞">代名詞</option>
			   <option value="その他">その他</option>
		　 </select><br>

		<input type="submit" class="btn-square-so-pop" value="登録"/>


</form:form>
</div>


<p><a href="${koreanUrl}"><img src="${images}/left-arrow.png" alt="" /></a></p>





<!-- <img src="${images}/keyboard.jpg" alt="キーボード" /> -->

</body>
</html>