package com.dangdangs.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dangdangs.board.service.BoardService;
import com.dangdangs.board.vo.BoardVO;
import com.dangdangs.comment.service.CommentService;
import com.dangdangs.comment.vo.CommentVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	@Autowired
	private CommentService commentService;
	
	@RequestMapping("/board")
	public String board(Model model) {
		List<BoardVO> list = boardService.selectAllBoard();
		model.addAttribute("boardList", list);
		return "board/board";
	}
	
	@RequestMapping("/board/{no}")
	public String detail(@PathVariable("no") int no, Model model) {
		BoardVO vo = boardService.selectResultBoard(no);
		List<CommentVO> list = commentService.selectByBnoComment(no);
		System.out.println(list);
		model.addAttribute("vo", vo);
		model.addAttribute("commentList", list);
		return "board/detail";
	}

}