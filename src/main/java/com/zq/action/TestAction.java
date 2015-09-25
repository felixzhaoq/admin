package com.zq.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pbo")
public class TestAction {

	@RequestMapping("index")
	public ModelAndView indexView(){
		ModelAndView view = new ModelAndView("/index");
		return view;
	}
}
