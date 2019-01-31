package com.wan.benito.DAO;

import com.wan.benito.DTO.MemberDTO;

public interface IMemberDao {
	int memberInsert(MemberDTO memberDto);
	MemberDTO memberSelect(MemberDTO memberDto);
	int memberUpdate(MemberDTO memberDto, String newPw);
}
