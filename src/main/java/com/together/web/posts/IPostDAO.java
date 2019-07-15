package com.together.web.posts;

import java.util.ArrayList;

public interface IPostDAO {
		
	// 여행 게시물의 기본정보 (제목, 작가닉네임, 연령, 성별조건, 모집인원, 신청인원, 등록일, 여행시작일, 여행종료일, 여행소개, 조회수) 
	public PostDTO postInfoBasic(PostDTO dto);
	
	// 여행 게시물의 테마 
	public ArrayList<String> tThemaType(PostDTO dto);
	
	// 여행 게시물의 경도
	public ArrayList<String> tLon(PostDTO dto);
	
	// 여행 게시물의 위도
	public ArrayList<String> tLat(PostDTO dto);
	
	// 여행 게시물의 장소
	public ArrayList<String> tPlaceName(PostDTO dto);
	
	

}
