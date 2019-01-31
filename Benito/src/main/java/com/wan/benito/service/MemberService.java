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

	@Override
	public MemberDTO memberModify(MemberDTO memberDto, String newPw) {
		// TODO Auto-generated method stub
		
		// 1. 현재 비밀번호가 맞는지 체크
		MemberDTO mem = memberDao.memberSelect(memberDto);
		
		if(mem == null) {
			System.out.println("not found this member!!");
			return mem;
		}else {
			int result = memberDao.memberUpdate(memberDto, newPw);
			if(result == 0) {
				System.out.println("modify Failed!!!!");
				
			}
			
			return mem;
			
		}
		
	}
}
