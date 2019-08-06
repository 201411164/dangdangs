package com.dangdangs.diag.dao;

import java.util.List;

public interface DiagDAO {

	List<String> selectDnameBySyname(String syname);
	List<String> selectDnameBySpcode(String spcode);
	List<String> selectDnameByDAge(int dage);
}
