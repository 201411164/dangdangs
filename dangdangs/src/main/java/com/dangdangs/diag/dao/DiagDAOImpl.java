package com.dangdangs.diag.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DiagDAOImpl implements DiagDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<String> selectDnameBySyname(String syname) {
		return ss.selectList("diag.dao.DiagDAO.selectDnameBySyname", syname);
	}

	@Override
	public List<String> selectDnameBySpcode(String spcode) {
		return ss.selectList("diag.dao.DiagDAO.selectDnameBySpcode", spcode);
	}

	@Override
	public List<String> selectDnameByDAge(int dage) {
		return ss.selectList("diag.dao.DiagDAO.selectDnameByAge", dage);
	}

}
