package com.dangdangs.pet.dao;

import com.dangdangs.pet.vo.PetVO;

public interface PetDAO {
	public void insert(PetVO petVO);
	public String selectSpnameBySpcode(String spcode);
}
