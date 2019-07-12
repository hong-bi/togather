package com.together.web.login;

import java.util.Map;

public interface IUserDAO {
	
	// 로그인
	public int login(UserDTO dto);
	
	// 회원가입
	public int checkId(String userId);
	public int checkNickname(UserDTO dto);
	public int checkEmail(UserDTO dto);
	public int add(UserDTO dto);
	public int addUthema(Map<String, Integer> map);
	public int checkNickname(String nickName);
	public int checkEmail(String email);
	public int searchUserCode(UserDTO dto);
	
	// 아이디찾기
	public int searchId(UserDTO dto);
	public String searchUserId(UserDTO dto);
	
	// 비밀번호 찾기
	public int searchPw(UserDTO dto);
}