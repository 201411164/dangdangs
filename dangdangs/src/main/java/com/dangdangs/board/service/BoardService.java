package com.dangdangs.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangdangs.board.dao.BoardDAO;
import com.dangdangs.board.vo.BoardVO;

@Service
public class BoardService implements BoardServiceInter {

	@Autowired
	private BoardDAO boardDAO;
	
	public List<BoardVO> selectAllBoard() {
		List<BoardVO> list = boardDAO.selectAll();
		return list;
	}

}
