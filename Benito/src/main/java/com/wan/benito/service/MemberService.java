package com.wan.benito.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wan.benito.DAO.MemberDao;
import com.wan.benito.DTO.MemberDTO;

@Service
public class MemberService implements IMemberService {

	@Autowired
	MemberDao memberDao;
	
	@Override
	public void memberRegister(MemberDTO memberDto) {
		// TODO Auto-generated method stub
		int result = memberDao.memberInsert(memberDto);
		
		if(result == 0) {
			System.out.println("join Failed!!");
		}else {
			System.out.println("join succsess!!");
		}
		

	}

	@Override
	public MemberDTO memberSearch(MemberDTO memberDto) {
		// TODO Auto-generated method stub
		
		MemberDTO mem = memberDao.memberSelect(memberDto);
		
		if(mem == null) {
			System.out.println("login failed....");
		}else {
			System.out.println("login success!!!");
		}
		
		return mem;
	}

}
