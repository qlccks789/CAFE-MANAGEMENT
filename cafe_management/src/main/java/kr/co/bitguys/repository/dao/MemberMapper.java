package kr.co.bitguys.repository.dao;

import kr.co.bitguys.repository.vo.MemberVO;

public interface MemberMapper {
	public MemberVO selectLogin(MemberVO member);
	public void insertMember(MemberVO member);
	public MemberVO selectMemberById(String id);
}
