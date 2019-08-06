package kr.co.mlec.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.mlec.login.service.LoginService;
import kr.co.mlec.member.vo.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;

	@GetMapping("/login")	
	public String loginForm() {
		return "login/login";
	}
	@GetMapping("/login/signUp")	
	public String signForm() {
		return "login/signUp";
	}
	@GetMapping("/diag/selectAge")		
	public String selectAge() {
		return "diag/selectAge";
	}
	
	
	@PostMapping("/login")
	public String login(MemberVO member, Model model) {
		
		MemberVO loginVO = loginService.login(member);
		

		if(loginVO == null) {
			// 로그인 실패
			model.addAttribute("msg", "아이디 또는 패스워드가 잘못되었습니다");
			return "redirect:/login";
		} else {
			// 로그인 성공
			return "redirect:/";
		}
	}
}













