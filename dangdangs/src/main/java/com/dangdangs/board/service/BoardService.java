package com.dangdangs.board.service;

import java.util.List;

import com.dangdangs.board.vo.BoardVO;

public interface BoardService {

	public List<BoardVO> selectAllBoard();
	public BoardVO selectResultBoard(int bno);
}
