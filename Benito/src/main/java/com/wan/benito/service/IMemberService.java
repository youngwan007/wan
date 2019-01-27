package com.wan.benito.service;

import com.wan.benito.DTO.MemberDTO;

public interface IMemberService {
	
	void memberRegister(MemberDTO memberDto);
	MemberDTO memberSearch(MemberDTO memberDto);
	

}
