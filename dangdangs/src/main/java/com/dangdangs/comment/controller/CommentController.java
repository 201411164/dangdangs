package com.dangdangs.comment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.dangdangs.comment.service.CommentService;
import com.dangdangs.comment.vo.CommentVO;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	@PostMapping("/comment/{no}")
	public String comment(@PathVariable("no") int no, CommentVO commentVO, Model model) {
		commentService.insertComment(commentVO);
		return "redirect:/board/" + no;
	}
}
