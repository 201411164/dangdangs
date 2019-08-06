package kr.co.mlec.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.board.vo.BoardVO;

/**
 * 오라클용 게시판 CRUD(MyBatis 적용)
 * @author bit
 *
 */

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	public List<BoardVO> selectAll() {
		List<BoardVO> boardList 
				= session.selectList("board.dao.BoardDAO.selectAll");
		
		return boardList;
	}

	public void insert(BoardVO board) {
		session.insert("board.dao.BoardDAO.insert", board);
	}

	@Override
	public BoardVO selectByNo(int no) {
		BoardVO board = session.selectOne("board.dao.BoardDAO.selectByNo", no);
		return board;
	}

	@Override
	public void delete(int no) {
		session.delete("board.dao.BoardDAO.deleteByNo", no);
		
	}

	
}














