package com.dangdangs.board.dao;

import java.util.List;

import com.dangdangs.board.vo.BoardVO;

public interface BoardDAO {

	public List<BoardVO> selectAll(); 
	public BoardVO selectResult(int bno);
	public BoardVO selectBnoByDname(String dname);
}
