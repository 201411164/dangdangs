package com.dangdangs.diag.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dangdangs.board.vo.BoardVO;
import com.dangdangs.diag.service.DiagService;
import com.dangdangs.diag.vo.DiagVO;

@Controller
public class DiagController {

	@Autowired
	private DiagService diagService;
	
	@GetMapping("/diag")
	public String diagForm() {
		return "diag/diag";
	}
	
	@PostMapping("/diag")
	public String diag(DiagVO diagVO, Model model) {
		List<String> dnameList = diagService.doDiag(diagVO);
		List<BoardVO> voList = diagService.getBnoByDname(dnameList);
		System.out.println(voList);
		System.out.println("가장 유력한 질병: " + dnameList.get(0));
		model.addAttribute("dnameList", dnameList);
		model.addAttribute("voList", voList);
		model.addAttribute("replaceChar", "\n");
		return "diag/result";
	}
}
