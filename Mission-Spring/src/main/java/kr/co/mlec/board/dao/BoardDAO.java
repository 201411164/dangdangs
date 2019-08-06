package kr.co.mlec.board.dao;

import java.util.List;

import kr.co.mlec.board.vo.BoardVO;

/**
 * Database를 통한 게시글 CRUD 
 * @author bit
 *
 */
public interface BoardDAO {

	/**
	 * 전체게시글 조회서비스
	 * @return 전체게시글
	 */
	public List<BoardVO> selectAll();
	
	/**
	 * 게시글 등록서비스
	 */
	public void insert(BoardVO board);
	
	/**
	 * 게시글 상세조회
	 * @param no 조회할 게시물 번호
	 * @return  조회된 게시물(BoardVO)
	 */
	public BoardVO selectByNo(int no);
	
	/**
	 * 게시글 삭제
	 * @param no 삭제할 게시물 번호
	 */
	public void delete(int no);
}













