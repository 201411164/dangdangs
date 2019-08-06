package com.dangdangs.pet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dangdangs.pet.dao.PetDAO;
import com.dangdangs.pet.vo.PetVO;

@Service
public class PetServiceImpl implements PetService {

	@Autowired
	private PetDAO petDAO;

	
	@Override
	public void insertPet(PetVO petVO) {
		petDAO.insert(petVO);
	}

}
