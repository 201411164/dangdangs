package kr.co.mlec;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.mlec.board.dao.BoardDAO;
import kr.co.mlec.board.vo.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:config/**/*.xml"})
public class BoardTest {

	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Ignore
	@Test
	public void 게시글상세테스트() throws Exception {
		
		BoardVO board = session.selectOne("board.dao.BoardDAO.selectByNo", 28);
		System.out.println(board);
	}
	
	@Test
	public void 게시글상세DAO테스트() throws Exception {
		
		BoardVO result = boardDAO.selectByNo(6);
		System.out.println(result);
	}
	
	@Ignore
	@Test
	public void 게시글등록테스트() throws Exception {
		
		BoardVO board = new BoardVO();
		board.setTitle("테스트입니다");
		board.setWriter("관리자");
		board.setContent("내용입니다");
		
		session.insert("board.dao.BoardDAO.insert", board);
	}
}










