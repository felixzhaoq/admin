<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="/common/taglibs.jsp" %>
<meta charset="utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="pragma" content="no-cache" />
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
	<div class="cl pd-20">
		<div class="cl pd-5 bg-1 bk-gray">
			<span class="l">
				<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
				<a class="btn btn-primary radius" id="roleAdd" ><i class="Hui-iconfont">&#xe600;</i> 添加角色</a>
			</span>
			<span class="r">共有数据：<strong>54</strong> 条</span> 
		</div>
		<table class="table table-border table-bordered table-hover table-bg">
			<thead>
				<tr>
					<th scope="col" colspan="6">角色管理</th>
				</tr>
				<tr class="text-c">
					<th width="25"><input type="checkbox" value="" name=""></th>
					<th width="40">ID</th>
					<th width="200">角色名</th>
					<th>用户列表</th>
					<th width="300">描述</th>
					<th width="70">操作</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-c">
					<td><input type="checkbox" value="" name=""></td>
					<td>1</td>
					<td>超级管理员</td>
					<td><a href="#">admin</a></td>
					<td>拥有至高无上的权利</td>
					<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','admin-role-add.html','1')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
				</tr>
				<tr class="text-c">
					<td><input type="checkbox" value="" name=""></td>
					<td>2</td>
					<td>总编</td>
					<td><a href="#">张三</a></td>
					<td>具有添加、审核、发布、删除内容的权限</td>
					<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','admin-role-add.html','2')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
				</tr>
				<tr class="text-c">
					<td><input type="checkbox" value="" name=""></td>
					<td>3</td>
					<td>栏目主辑</td>
					<td><a href="#">李四</a>，<a href="#">王五</a></td>
					<td>只对所在栏目具有添加、审核、发布、删除内容的权限</td>
					<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','admin-role-add.html','3')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
				</tr>
				<tr class="text-c">
					<td><input type="checkbox" value="" name=""></td>
					<td>4</td>
					<td>栏目编辑</td>
					<td><a href="#">赵六</a>，<a href="#">钱七</a></td>
					<td>只对所在栏目具有添加、删除草稿等权利。</td>
					<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','admin-role-add.html','4')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
				</tr>
			</tbody>
		</table>
	</div>
</section>
<div class="pd-20" id="add_role" style="display:none">
	<form action="" method="post" class="form form-horizontal" id="form_add_role">
	<center>
		<div class="row cl">
			<label class="form-label col-3">账户名：</label>
			<div class="formControls col-5">
				<input type="text" class="input-text" autocomplete="off" placeholder="6-18位字母或者数字" name="username" id="username" datatype="username" nullmsg="账户不能为空" errormsg="请输入6-18位字符只能包含数字、字母、下划线">
			</div>
			<div class="col-4"> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-3">密码：</label>
			<div class="formControls col-5">
				<input type="password" class="input-text" plugin="passwordStrength" autocomplete="off" placeholder="密码" name="password" id="password" datatype="*6-18" nullmsg="请输入密码！" >
				<div class="passwordStrength">
				密码强度：
				<span>弱</span>
				<span>中</span>
				<span class="last">强</span>	
			</div>
			</div>
			<div class="col-4"></div>
		</div>
		<div class="row cl">
			<label class="form-label col-3"></label>
			
		</div>
		<div class="row cl">
			<label class="form-label col-3">确认密码：</label>
			<div class="formControls col-5">
				<input type="password" class="input-text" autocomplete="off" placeholder="密码" name="password2" id="password2" recheck="password" datatype="*6-18" nullmsg="请再输入一次密码！" errormsg="您两次输入的密码不一致！" >
			</div>
			<div class="col-4"> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-3">邮箱：</label>
			<div class="formControls col-5">
				<input type="text" class="input-text" placeholder="@" name="email" id="email" datatype="e" nullmsg="请输入邮箱！">
			</div>
			<div class="col-4"> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-3">单选框：</label>
			<div class="formControls skin-minimal col-5">
				<div class="radio-box">
					<input type="radio" id="sex-1" name="sex" datatype="*" nullmsg="请选择性别！">
					<label for="sex-1">男</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-2" name="sex">
					<label for="sex-2">女</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-3" name="sex">
					<label for="sex-3">保密</label>
				</div>
			</div>
			<div class="col-4"> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-3">爱好：</label>
			<div class="formControls skin-minimal col-5">
				<div class="check-box">
					<input type="checkbox" id="checkbox-5" name="checkbox2" datatype="*" nullmsg="爱好不能为空！">
					<label for="checkbox-5">上网</label>
				</div>
				<div class="check-box">
					<input type="checkbox" id="checkbox-6" name="checkbox2">
					<label for="checkbox-6">摄影</label>
				</div>
			</div>
			<div class="col-4"> </div>
		</div>
		<div class="row cl">
			<label class="form-label col-3">所在城市：</label>
			<div class="formControls col-5"> <span class="select-box">
				<select class="select" size="1" name="demo1" datatype="*" nullmsg="请选择所在城市！">
					<option value="" selected>请选择城市</option>
					<option value="1">北京</option>
					<option value="2">上海</option>
					<option value="3">广州</option>
				</select>
				</span> </div>
			<div class="col-4"> </div>
		</div>
		<div class="row cl">
			<div class="col-7 col-offset-5">
				<button type="submit" class="btn btn-success radius" id="admin-role-save" name="admin-role-save"><i class="icon-ok"></i> 确定</button>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript" src="${ctx }/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${ctx }/lib/layer/1.9.3/layer.js"></script> 
<script type="text/javascript" src="${ctx }/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${ctx }/js/H-ui.js"></script> 
<script type="text/javascript" src="${ctx }/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="${ctx }/lib/Validform/Validform.js"></script> 
<script type="text/javascript" src="${ctx }/lib/Validform/passwordStrength-min.js"></script> 
<script type="text/javascript" src="${ctx }/js/admin-manager.js"></script>

</body>
</html>