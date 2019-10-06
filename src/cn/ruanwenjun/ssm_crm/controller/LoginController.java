package cn.ruanwenjun.ssm_crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ruanwenjun.ssm_crm.domain.User;
import cn.ruanwenjun.ssm_crm.service.ILoginService;

/**
 * @author ruanwenjun E-mail:861923274@qq.com
 * @date 2018年4月11日 下午6:47:31
 */

@Controller
public class LoginController {

	@Autowired
	private ILoginService loginService;

	// 跳转到页面
	@RequestMapping(value = "login/login.action")
	public String list(Model model, String userId, String password) {
		List<User> userList = loginService.findUserinfo(userId, password);
		
		if(userList.size() ==0) {
			model.addAttribute("message", "error");
			//return "index";
		}
		else
		{
			model.addAttribute("message", "correct");
			//return "index";
		}
		
		model.addAttribute("userList", userList);
		//return "customer";
		
		
		return "redirect:../customer/list.action";
	}
}
