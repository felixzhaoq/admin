package com.zq.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;


/** 
 * 基类action
 * @author ysliu
 * @date Aug 7, 2013 19:23:08 PM
 * @version 1.0
 */
public class BaseAction {

	/**
	 * 正确信息，输出json格式数据
	 * @param msg
	 * @param response
	 */
	public void outputJsonOk(String msg,HttpServletResponse response){
		this.outputJson("T", msg, response);
	}
	/**
	 * 错误信息，输出json格式数据
	 * @param msg
	 * @param response
	 */
	public void outputJsonFalse(String msg,HttpServletResponse response){
		this.outputJson("F", msg, response);
	}
	/**
	 * 输出json数据
	 * @param flag
	 * @param msg
	 * @param response
	 */
	public void outputJson(String flag,String msg,HttpServletResponse response){
		JsonObject json = new JsonObject();
		json.addProperty("msg", msg);
		json.addProperty("flag", flag);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		out.print(json.toString());
	}
	
	/**
	 * 
	 * @author jinhua
	 * @email wangjinhua714@126.com
	 * @date Aug 18, 2014 5:09:02 PM
	 * @version v1.0
	 * @{#} jmj_p2p com.zbxsoft.p2p.web.controller.p2p BaseAction.java
	 * @param json
	 * @param response
	 */
	public void outputJson(Object json,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");
		try {
			PrintWriter out = response.getWriter();
			out.print(json.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 输出json数组
	 * @param arr
	 * @param response
	 */
	public void outputJsonArray(JsonArray arr,HttpServletResponse response){
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		out.print(arr.toString());
	}
	/**
	 * 获取当前登录用户
	 * @param request
	 * @return
	 * @throws IOException 
	 */
//	public String getCurrentUsername(HttpServletRequest request,HttpServletResponse response){
//		String userEname = "";
//		LoginUser loginUser = (LoginUser)request.getSession().getAttribute("loginUser");
//		if(loginUser == null){
//			String loginUrl = Common.getValueByProperty("login_url");
//			try {
//				response.sendRedirect(loginUrl);
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}else{
//			userEname = loginUser.getUserEname();
//		}
//		return userEname;
//	}
//	/**
//	 * 获取客户端真实IP地址
//	 * @author ysliu
//	 * @date 2014-10-30 下午17:07:19
//	 */
//	protected String getIpAddr(HttpServletRequest request) {
//		String ip = request.getHeader("x-forwarded-for");
//		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
//			ip = request.getHeader("Proxy-Client-IP");
//		}
//		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
//			ip = request.getHeader("WL-Proxy-Client-IP");
//		}
//		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
//			ip = request.getRemoteAddr();
//		}
//		if(StrUtil.isNotEmpty(ip)){//截取第一个IP，因为如果经过百度CDN还会被记录一个CDN的IP
//			ip = ip.split(",")[0];
//		}
//		ip = getMatcher(ip);
//		return ip;
//	}
//	private String getMatcher(String str){
//		if(StrUtil.isEmpty(str)){
//			return "";
//		}
//		str = str.replaceAll("<", "&lt;");
//		str = str.replaceAll(">", "&gt;");
//		str = str.replaceAll("&", "");
//		str = str.replaceAll("%", "");
//		return str;
//	}
	/**
	 * 封装返回的xml数据
	 * @param status
	 * @param errmsg
	 * @return
	 */
	protected String getXmlInfo(String status, String errmsg) {
		StringBuffer XmlStr = new StringBuffer("<?xml version='1.0' encoding='UTF-8'?><root>");
		XmlStr.append("<result>" + status + "</result><errmsg>" + errmsg + "</errmsg>");
		XmlStr.append("</root>");
		return XmlStr.toString();
	}
	/**
	 * 输出xml数据流
	 * @param xml
	 * @param response
	 */
	protected void outputXml(String xml, HttpServletResponse response) {
		try {
			response.setContentType("text/xml;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print(xml);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
