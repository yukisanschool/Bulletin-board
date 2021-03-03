<%@ page pageEncoding="Windows-31J"
	isErrorPage="true"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core タグライブラリ--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!--スレッド投稿用-->
<html id="top background-red" lang="ja">
<head>
<meta charset="Shift-JIS">
<title>ばるみん掲示板</title>
<!-- font -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<!-- CSS -->
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<link href="css/style.css" rel="stylesheet">
<!-- JS -->
<script src="menu.js"></script>
<!--アイコン-->
<link rel="icon" type="image/png" href="image/favicon.png">
</head>
<body>

<div class="post-button" onclick="threadMenuClicked()">
	<div class="post-open-char-A">投稿</div>
	<div class="post-open-char-B">する</div>
</div>
<div id="post-effect-circle"style="width: 0px; height: 0px; top: 1.05vw; right: 1.6vw;"></div>
<form action="threadservlet" method="POST" id="post-wrapper" class="display-none">
	<div id="post-close-button" class="post-button" onclick="threadMenuClicked()">
		<div class="post-close-char">閉じる</div>
	</div>
	<div class="post-icon-wrapper">
		<div class="post-icon-outer">
			<img id="post-icon-0" class="post-icon-img post-icon-effect" src="image/icon1.svg" onclick="selectIcon(1)">
		</div>
		<div class="post-icon-outer">
			<img id="post-icon-1" class="post-icon-img" src="image/icon2.svg" onclick="selectIcon(2)">
		</div>
		<div class="post-icon-outer">
			<img id="post-icon-2" class="post-icon-img" src="image/icon3.svg" onclick="selectIcon(3)">
		</div>
		<div class="post-icon-outer">
			<img id="post-icon-3" class="post-icon-img" src="image/icon4.svg" onclick="selectIcon(4)">
		</div>
	</div>
	<div class="post-input-wrapper">
		名前<br>
		<textarea class="post-input-textarea-A post-input-textarea" name="name" placeholder="10文字まで" maxlength="10" required></textarea>
		<br>タイトル<br>
		<textarea class="post-input-textarea-A post-input-textarea" name="title" placeholder="50文字まで" maxlength="50" required></textarea>
		<br>本文<br>
		<textarea class="post-input-textarea-B post-input-textarea" name="description" placeholder="100文字まで" maxlength="100"></textarea>
		<br>
		<input class="submit-button post-submit-button" type="submit" value="投稿">
	</div>
	<span class="display-none">
		<input type="radio" value="1" name="icon" value="1" checked>
		<input type="radio" value="2" name="icon" value="2">
		<input type="radio" value="3" name="icon" value="3">
		<input type="radio" value="4" name="icon" value="4">
	</span>
</form>
<span id="content">
	<svg class="menu-sun-outer" version="1.1" viewBox="0 0 130.82 50.671" xmlns="http://www.w3.org/2000/svg">
		<a xlink:href="threadservlet">
			<ellipse cx="57.166" cy="-21.318" rx="56.942" ry="57.382" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<circle cx="75.289" cy="44.838" r=".70247" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<ellipse cx="63.253" cy="47.349" rx="1.6391" ry="1.6391" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<circle cx="86.516" cy="39.672" r="1.6391" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<circle cx="47.142" cy="46.81" r="3.1991" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<circle cx="98.981" cy="31.755" r="3.1991" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<ellipse cx="28.753" cy="42.152" rx="5.6106" ry="5.6106" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<circle cx="112.61" cy="19.137" r="5.6106" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<circle cx="121.88" cy="2.3456" r="8.283" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<circle cx="10.49" cy="31.044" r="8.283" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<circle cx="-8.0849" cy="10.891" r="11.958" style="fill:#d43333;paint-order:stroke markers fill;stroke-miterlimit:3;stroke-width:1.3229;stroke:#fdeadd"/>
		</a>
		<a xlink:href="threadservlet">
			<text x="23.431368" y="20.962624" style="fill:#fdeadd;font-size:9.525px;line-height:1.25;stroke-width:.26458" xml:space="preserve"><tspan x="23.431368" y="14.962624" style="fill:#fdeadd;font-size:9.525px;stroke-width:.26458">ばるみん掲示板</tspan><tspan x="23.431368" y="32.868874" style="fill:#fdeadd;font-size:9.525px;stroke-width:.26458"/></text>
		</a>
	</svg>
<div class="menu-cloud-outer">
	<img src="image/kumo.svg">
</div>
<!--検索test-->
<form class="menu-input-wrapper" action="searchservlet" method="POST">
	<span class="menu-input-margin-left"></span>
	検索：
	<textarea name="search" placeholder="ここに入力" requid></textarea>
	<span class="menu-input-margin-center"></span>
	<input class="submit-button" type="submit" value="検索">
</form>
<!--ここまで-->
<div class="bottom-menu-wrapper">
	<a href="#" class="bottom-menu-outer">
		<div class="bottom-menu-char">トップへ</div>
		<div class="bottom-menu-char">戻る</div>
	</a>
	<div class="bottom-menu-outer" onclick="threadMenuClicked()">
		<div class="bottom-menu-char">コメント</div>
		<div class="bottom-menu-char">する</div>
	</div>
</div>
	<div class=\"list-circle-wrapper\">
		<h1 class="searchmes">投稿できませんでした<h1>
	</div>
	<div class="bottom-margin">
		<%! int cnt=0; %>
		<% pageContext.setAttribute("cnt1",cnt); %>
		<c:forEach var="_list" items="${thlist}">
				${_list.count==1 ? "<div class=\"list-circle-wrapper\">" : 
				(_list.count %7==1 ? "<div class=\"list-circle-wrapper\">" : 
				(_list.count %7==4 ? "<div class=\"list-circle-wrapper\">" : "<div></div>"))}
			<a href="ResponceServlet?id=${_list.th_id}&co=1" class="list-circle-outer">
				<img class="list-icon-img" src="image/icon${_list.th_icon}.svg">
				<br>
				<span class="list-title-char">${_list.th_title}</span>
				<br>
				<br>
				<div class="list-name-char">投稿者:${_list.th_name}</div>
				<br>
				<span class="list-etc-char">閲覧数:${_list.th_view}</span>
				<br>
				<span class="list-time-char">${_list.th_date}</span>
			</a>
				${_list.count %7==0 ? "</div>" : 
				(_list.count %7==3 ? "</div>" : "<a hidden>非表示用</a>")}
				<a hidden>${cnt1=_list.count}</a>		<!--ずれないためのダミー用-->
		</c:forEach>
		${cnt1%7==1 ? "<a class=\"list-circle-outer dummy\"></a><a class=\"list-circle-outer dummy\"></a></div>" : 
		(cnt1%7==2 ? "<a class=\"list-circle-outer dummy\"></a></div>" : 
		(cnt1%7==4 ? "<a class=\"list-circle-outer dummy\"></a><a class=\"list-circle-outer dummy\"></a><a class=\"list-circle-outer dummy\"></a></div>" :
		(cnt1%7==5 ? "<a class=\"list-circle-outer dummy\"></a><a class=\"list-circle-outer dummy\"></a></div>" :
		(cnt1%7==6 ? "<a class=\"list-circle-outer dummy\"></a></div>" : "<a hidden>非表示用</a>"))))}
	<h1 class="searchmes">${nodata}</h1>
<div class="bottom-margin"></div>
</span>
</body>
</html>

