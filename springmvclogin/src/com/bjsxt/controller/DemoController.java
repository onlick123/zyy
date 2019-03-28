package com.bjsxt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjsxt.pojo.User;



@Controller
public class DemoController {
	@RequestMapping("{page}")
  public String main(@PathVariable String page){
		return page;
	}
	@RequestMapping("login")
	public String login(User user,HttpSession session){
		if(user.getUsername().equals("admin")&&user.getPassowrd().equals("123")){
			session.setAttribute("user", user);
			return "main";
		}else {
			return "redirect:/login.jsp";
		}
	
	}
}
