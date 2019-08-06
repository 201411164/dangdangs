package com.dangdangs.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.dangdangs.member.service.MemberService;
import com.dangdangs.member.vo.MemberVO;

@SessionAttributes({"loginVO"})
@Controller
public class LoginController {
	
	@Autowired
	private MemberService service;

	@GetMapping("/login")
	public String loginForm() {
		return "member/login";
	}
	
	@PostMapping("/login")
	public String login(MemberVO memberVO, Model model) {
		MemberVO member = service.loginMember(memberVO);
		
		if (member == null) {
			// �α��� ����
			model.addAttribute("msg", "���̵� �Ǵ� �н����尡 �߸��Ǿ����ϴ�.");
			return "redirect:/login";
		} else {
			// �α��� ����
			model.addAttribute("loginVO", member);
			return "redirect:/";
		}
	}
	
	@GetMapping("/logout")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}
}
