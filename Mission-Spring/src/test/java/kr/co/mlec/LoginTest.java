package kr.co.mlec;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.mlec.login.dao.LoginDAO;
import kr.co.mlec.login.service.LoginService;
import kr.co.mlec.member.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:config/**/*.xml"})
public class LoginTest {

	@Autowired
	private SqlSessionTemplate session;
	@Autowired
	private LoginDAO loginDAO;
	@Autowired
	private LoginService loginService;
	
	@Test
	public void LoginService로그인테스트() throws Exception {
		MemberVO member = new MemberVO();
		member.setId("user");
		member.setPassword("user");
		MemberVO loginVO = loginService.login(member);
		
		System.out.println(loginVO);
	}
	
	//@Test
	public void LoginDAO로그인테스트() throws Exception {
		MemberVO member = new MemberVO();
		member.setId("user");
		member.setPassword("user");
		MemberVO loginVO = loginDAO.loin(member);
		
		System.out.println(loginVO);
	}
	
//	@Test
	public void 로그인테스트() throws Exception {
		
		MemberVO member = new MemberVO();
		member.setId("user");
		member.setPassword("user");
		
		MemberVO loginVO = session.selectOne("member.dao.MemberDAO.login", member);
		System.out.println(loginVO);
	}
}










