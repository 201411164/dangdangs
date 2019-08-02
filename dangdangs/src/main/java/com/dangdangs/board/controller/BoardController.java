package com.dangdangs.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dangdangs.board.service.BoardService;
import com.dangdangs.board.vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService service;
	
	@RequestMapping("/board")
	public String board(Model model) {
		List<BoardVO> list = service.selectAllBoard();
		model.addAttribute("boardList", list);
		return "board/board";
	}
}