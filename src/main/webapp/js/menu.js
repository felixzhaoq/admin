/**
* @author zhaoqiang
* @date 2013-09-06
* @des 全局公用js文件，
* @function myShow() 主要控制左边菜单栏的张开与关闭
* 实现方式采用cookie记录每次单击的菜单，防止刷新单击对象的属性丢失
* 特别注意这里的 path=/ 一定要加，不然就会有问题
* 由于没有加cookies时间，默认存在内存，如果不加路径，那么cookies将不能在全局共享，就可以造成取cookies值为上一次
**/


ZbxMenuEvent=new function(){ 

	/*去掉所有空格*/
	var strTrim=function(str) {
	    return str.replace(/(^\s*)|(\s*$)/g, "");
	};
	
	/**
	* 设置cookie
	* @param m 单击对象所在的父对象
	* @param a 单击的当前对象
	* 特别注意这里的 path=/ 一定要加，不然就会有问题
	* 由于没有加cookies时间，默认存在内存，如果不加路径，那么cookies将不能在全局共享，就可以造成取cookies值为上一次
	**/
	var setCookie=function(v){
		document.cookie="menu_constants="+escape(v)+";path=/";
	};
	
	/**
	* 取cookie
	**/
	var getCookie=function(){
		var arr = document.cookie;
		var ck="";
     	if(arr !== null){
     		var arrCookie=arr.split(";");
     		for(var i=0;i<arrCookie.length;i++){
     			var str=arrCookie[i].split("=")[0];
     			if(strTrim(str)=="menu_constants"){
     				ck=arrCookie[i].split("=")[1];
     				return ck;
     				break;
     			}
     		}
     	}
     	return null;
     	
	};
	
	
	/**
	* 菜单栏单击事件，传送参数
	* @param m 单击对象的父对象
	* @param a 单击的当前自己
	**/
	this.menuClick=function(m,a){
		var value=m+"-"+a;
		setCookie(value);
	};
	
	/**
	* 页面调用函数，控制菜单的打开与关闭
	**/
	this.myShow=function(){
		var tag=getCookie();
		var arr=[];
		if(tag!=null)
			arr=tag.split("-");
		
		var parentObj = document.getElementById(arr[0]) ;
		
		var thisObj = document.getElementById(arr[1]) ;
		
		if(parentObj){
			parentObj.setAttribute("class","active open");
			parentObj.setAttribute("className","active open");
		}
		
		if(thisObj){
			thisObj.setAttribute("class","active");
			thisObj.setAttribute("className","active");
			
		}
	};
	
};

//ZbxMenuEvent.myShow();
