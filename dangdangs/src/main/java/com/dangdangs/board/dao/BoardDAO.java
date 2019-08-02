package com.dangdangs.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dangdangs.board.vo.BoardVO;

@Repository
public class BoardDAO implements BoardDAOInter {

	@Autowired
	private SqlSessionTemplate ss;
	
	public List<BoardVO> selectAll() {
		return ss.selectList("board.dao.BoardDAO.selectAll");
	}

}
