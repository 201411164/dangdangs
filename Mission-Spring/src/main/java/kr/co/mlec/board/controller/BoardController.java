package kr.co.mlec.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.board.service.BoardService;
import kr.co.mlec.board.vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService service;
	
	@RequestMapping("/board")
	public ModelAndView list() {
		List<BoardVO> boardList = service.selectAllBoard();
		
		ModelAndView mav = new ModelAndView("board/list");
		mav.addObject("boardList", boardList);
		
		return mav;
	}
	
	@RequestMapping(value="/board/write", method=RequestMethod.GET)
	public String writeForm(Model model) {
		
		BoardVO board = new BoardVO();
		model.addAttribute("boardVO", board);
		
		return "board/write";
	}
	
	@RequestMapping(value="/board/write", method=RequestMethod.POST)
	public String write(@Valid BoardVO board, BindingResult result) {
		
		System.out.println(board);
		
		if(result.hasErrors()) {
			System.out.println("오류발생...");
			return "board/write";
		}
		
		service.insertBoard(board);
		
		return "redirect:/board";
	}
	@RequestMapping(value="/board/write2", method=RequestMethod.GET)
	public String writeForm2() {
		return "board/write2";
	}
	
	@RequestMapping(value="/board/write2", method=RequestMethod.POST)
	public String write2(BoardVO board) {
		
//		System.out.println(board);
		service.insertBoard(board);
		
		return "redirect:/board";
	}
	
//	http://localhost:9999/board/300  300번번호의 게시글 조회
	@RequestMapping(value="/board/{no}", method=RequestMethod.GET)
	public ModelAndView detail(@PathVariable("no") int no) {
		
		BoardVO board = service.detailBoardByNo(no);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/detail");
		mav.addObject("board", board);
		
		return mav;
	}
	
//	http://localhost:9999/board/detail?no=300  300번번호의 게시글 조회
	@RequestMapping(value="/board/detail")
	public ModelAndView detail2(@RequestParam("no")int no) {
		
		BoardVO board = service.detailBoardByNo(no);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/detail");
		mav.addObject("board", board);
		
		return mav;
	}
	
	@RequestMapping("/board/remove/{no}")
	public String removeBoard(@PathVariable("no") int no) {
		System.out.println("삭제할 번호 : " + no);
		
		return "redirect:/board";
	}
	
/*	
//	method delete이면서 http://localhost:9999/board/300  300번번호의 게시글 삭제
	@ResponseBody
	@RequestMapping(value="/board/{no}", method=RequestMethod.DELETE)
	public Map<String, Boolean> delete(@PathVariable("no") int no) {
		Map<String, Boolean> result = new HashMap<>();
		result.put("flag", true);
		
		return result;
	}
*/	
	
}









