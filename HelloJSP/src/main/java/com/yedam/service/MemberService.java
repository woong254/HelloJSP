package com.yedam.service;

import com.yedam.vo.MemberVO;

//회원관련 업무
public interface MemberService {
	public boolean addMember(MemberVO mamber);
	public MemberVO userCheck(String id, String pw);
}
