package com.kapjaBrothers.springBoard.service;

import com.kapjaBrothers.springBoard.entity.membersData;

public interface memberService {
	public int idCheck(String id);
	public void passwordCheck(String pw);
	public void emailCheck(String email);
	public void memberRegister(membersData mData);
	public void memberDelete(String id);
	public void memberEdit(String id);
	
}
