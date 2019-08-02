package com.dangdangs.diag.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dangdangs.diag.service.DiagService;
import com.dangdangs.diag.vo.DiagVO;

@Controller
public class DiagController {

	@Autowired
	private DiagService service;
	
	@GetMapping("/diag")
	public String diagForm() {
		return "diag/diag";
	}
	
	@PostMapping("/diag")
	public String diag(DiagVO vo, Model model) {
		List<String> list = service.doDiag(vo);
		model.addAttribute("dnameList", list);
		System.out.println("리스트 형태: " + list);
		System.out.println("가장 유력한 질병: " + list.get(0));
		
		return "diag/result";
	}
}
