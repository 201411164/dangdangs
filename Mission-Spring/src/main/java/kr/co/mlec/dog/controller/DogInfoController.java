package kr.co.mlec.dog.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mlec.board.vo.BoardVO;

@Controller
public class DogInfoController {
	
	
	@GetMapping("/diag/selectAge")		
	public String selectAge() {
		return "diag/selectAge";
	}
}












