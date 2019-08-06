package com.dangdangs.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dangdangs.board.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	public List<BoardVO> selectAll() {
		return ss.selectList("board.dao.BoardDAO.selectAll");
	}

	@Override
	public BoardVO selectResult(int bno) {
		return ss.selectOne("board.dao.BoardDAO.selectResult", bno);
	}

	@Override
	public BoardVO selectBnoByDname(String dname) {
		return ss.selectOne("board.dao.BoardDAO.selectBnoByDname", dname);
	}

}
