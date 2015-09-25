<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/common/taglibs.jsp" %>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="${ctx }/lib/html5.js"></script>
<script type="text/javascript" src="${ctx }/lib/respond.min.js"></script>
<script type="text/javascript" src="${ctx }/lib/PIE_IE678.js"></script>
<![endif]-->
<link href="${ctx }/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/css/skin/blue/skin.css" rel="stylesheet" type="text/css" id="skin" />
<link href="${ctx }/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/css/style.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>H-ui.admin v2.3</title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<%@include file="/common/top.jsp" %>
	<%@include file="/common/menu.jsp" %>
<section class="Hui-article-box">
<nav class="breadcrumb">
		<i class="Hui-iconfont"></i>
		<a href="/" class="maincolor">首页</a>
		<span class="c-999 en">&gt;</span>基础
		<span class="c-999 en">&gt;</span>
		<span class="c-666">表格</span>
	</nav>
	<div class="Hui-article">
		<div class="cl pd-20">
			<table class="table table-border table-bordered table-striped">
				<thead class="text-c">
					<tr>
						<th>标题1</th>
						<th>标题2</th>
						<th>标题3</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody class="text-c">
					<tr>
						<td>标题1</td>
						<td>标题2</td>
						<td>标题3</td>
						<td>
							<div class="dropDown dropDown_click">
							  <a class="btn btn-primary radius size-MINI" href="#">操作</a>
							  <div class="dropDown-menu box-shadow">
							    <ul>
							      <li><a href="#">菜单一</a></li>
							      <li><a href="#">菜单二</a></li>
							    </ul>
							  </div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</section>
<script type="text/javascript" src="${ctx }/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${ctx }/lib/layer/1.9.3/layer.js"></script> 
<script type="text/javascript" src="${ctx }/js/H-ui.js"></script> 
<script type="text/javascript" src="${ctx }/js/H-ui.admin.js"></script> 
</body>
</html>