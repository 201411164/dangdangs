package com.dangdangs.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dangdangs.member.service.MemberService;
import com.dangdangs.member.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	@GetMapping("/signup")
	public ModelAndView signupForm() {
		MemberVO memberVO = new MemberVO();
		ModelAndView mav = new ModelAndView("member/signup");
		mav.addObject("memberVO", memberVO);
		return mav;
	}
	
	@PostMapping("/signup")
	public String signup(@Valid MemberVO memberVO, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("회원가입중 에러 발생");
			return "member/signup";
		} else {
			service.signUp(memberVO);
			return "redirect:/";
		}
	}

	@ResponseBody
	@PostMapping("/signup/valid")
	public MemberVO validCheck(@RequestParam int index, @RequestParam String query) {
		return service.checkValid(index, query);
	}
	
	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		// 로그인 되었을 때
		if (session.getAttribute("loginVO") != null) {
			return "member/mypage";
		}
		else {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			return "fail";
		}
	}
}
