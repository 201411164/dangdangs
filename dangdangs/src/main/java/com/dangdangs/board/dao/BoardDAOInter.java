package com.dangdangs.board.dao;

import java.util.List;

import com.dangdangs.board.vo.BoardVO;

public interface BoardDAOInter {

	public List<BoardVO> selectAll(); 
}
