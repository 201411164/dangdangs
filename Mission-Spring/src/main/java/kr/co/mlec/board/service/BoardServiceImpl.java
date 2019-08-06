package kr.co.mlec.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.board.dao.BoardDAO;
import kr.co.mlec.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;
	
	public List<BoardVO> selectAllBoard() {
		
		List<BoardVO> boardList = boardDAO.selectAll();
		return boardList;
	}

	public void insertBoard(BoardVO board) {
		boardDAO.insert(board);
	}

	@Override
	public BoardVO detailBoardByNo(int no) {
		
		BoardVO board = boardDAO.selectByNo(no);
		
		return board;
	}

	@Override
	public void deleteBoardByNo(int no) {
		boardDAO.delete(no);
	}

	
}







