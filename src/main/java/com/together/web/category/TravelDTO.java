package com.together.web.category;

import java.util.ArrayList;

public class TravelDTO {
	
	int travelCode, tempCode, writerCode, genderCode, peopleNum, viewNum;
	
	String recruit_Start, recruit_End, t_Start, t_End, title, intro, nickName, city_Start, city_End
	, region_Start, region_End, img;

	
	int[] themaCode;
	ArrayList<String> themaType;
	
	// getter / setter
	
	public int getTravelCode() {
		return travelCode;
	}
	public void setTravelCode(int travelCode) {
		this.travelCode = travelCode;
	}
	public int getTempCode() {
		return tempCode;
	}
	public void setTempCode(int tempCode) {
		this.tempCode = tempCode;
	}
	public int getWriterCode() {
		return writerCode;
	}
	public void setWriterCode(int writerCode) {
		this.writerCode = writerCode;
	}
	public int getGenderCode() {
		return genderCode;
	}
	public void setGenderCode(int genderCode) {
		this.genderCode = genderCode;
	}
	public int getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	public int getViewNum() {
		return viewNum;
	}
	public void setViewNum(int viewNum) {
		this.viewNum = viewNum;
	}
	public String getRecruit_Start() {
		return recruit_Start;
	}
	public void setRecruit_Start(String recruit_Start) {
		this.recruit_Start = recruit_Start;
	}
	public String getRecruit_End() {
		return recruit_End;
	}
	public void setRecruit_End(String recruit_End) {
		this.recruit_End = recruit_End;
	}
	public String getT_Start() {
		return t_Start;
	}
	public void setT_Start(String t_Start) {
		this.t_Start = t_Start;
	}
	public String getT_End() {
		return t_End;
	}
	public void setT_End(String t_End) {
		this.t_End = t_End;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public int[] getThemaCode() {
		return themaCode;
	}
	public void setThemaCode(int[] themaCode) {
		this.themaCode = themaCode;
	}

	public ArrayList<String> getThemaType() {
		return themaType;
	}
	public void setThemaType(ArrayList<String> themaType) {
		this.themaType = themaType;
	}
	public String getCity_Start() {
		return city_Start;
	}
	public void setCity_Start(String city_Start) {
		this.city_Start = city_Start;
	}
	public String getCity_End() {
		return city_End;
	}
	public void setCity_End(String city_End) {
		this.city_End = city_End;
	}
	public String getRegion_Start() {
		return region_Start;
	}
	public void setRegion_Start(String region_Start) {
		this.region_Start = region_Start;
	}
	public String getRegion_End() {
		return region_End;
	}
	public void setRegion_End(String region_End) {
		this.region_End = region_End;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	

	
	
	
	
}
