package com.together.web.category;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface ITravelDAO {
	
	// 현재 모집중인 게시물의 수 
	public int nowRecruitTravelNum();
	
	// 현재 모집중인 게시물의 travelcode, title, 작가닉네임, 여행시작, 여행끝, 모집마감일, 이미지
	public ArrayList<TravelDTO> travelInfoBasic(String orderBy); 
	
	// 현재 모집중인 게시물의 themaType 
	public ArrayList<String> tThemaType(int travelCode);
	
	// 현재 모집중인 게시물의 시작 지역 / 끝 지역
	public TravelDTO tCityStart(int travelCode);
	public TravelDTO tCityEnd(int travelCode);
	
	// 테마 전체검색 -  현재 모집중인 게시물의 travelcode, title, 작가닉네임, 여행시작, 여행끝, 모집마감일, 이미지
	public ArrayList<TravelDTO> themaAll(TravelDTO dto); 
	
	// 테마 선택검색
	public ArrayList<TravelDTO> themalist(TravelDTO dto); 
	public int themaNum(TravelDTO dto);
	
	// 기간 선택검색
	public ArrayList<TravelDTO> periodlist(TravelDTO dto); 
	public int periodNum(TravelDTO dto);
	
	public ArrayList<TravelDTO> periodlistOther(TravelDTO dto); 
	public int periodNumOther(TravelDTO dto);
	
	
	// 지역 검색
	public ArrayList<TravelDTO> regionlist(TravelDTO dto); 
	public int regionNum(TravelDTO dto);
	
	
	
}
 