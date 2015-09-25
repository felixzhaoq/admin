package com.zq.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zq.entity.SysUser;
import com.zq.manager.SysUserManager;

@Controller
@RequestMapping("sys")
public class SysManagerAction extends BaseAction{
	@Autowired
	private SysUserManager manager;

	@RequestMapping("index")
	public ModelAndView gotoIndex(){
		ModelAndView view = new ModelAndView("/manager/index");
		return view;
	}
	@RequestMapping("roleView")
	public ModelAndView gotoRoleView(){
		ModelAndView view = new ModelAndView("/manager/roleManager");
		return view;
	}
	@RequestMapping("gotoRoleAddView")
	public ModelAndView gotoRoleAddview(){
		ModelAndView view = new ModelAndView("/dialog/admin-role-add");
		return view;
	}
	
	@RequestMapping("updateRole")
	public void updateRole(SysUser user,HttpServletRequest request,HttpServletResponse response){
		try {
			manager.saveUser(user);
			this.outputJson("T", "保存成功", response);
		}catch (RuntimeException e) {
			this.outputJson("F", "保存失败错误代码：500", response);
		}
	}
}
