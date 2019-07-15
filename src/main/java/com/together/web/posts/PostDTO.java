package com.together.web.posts;

import java.util.ArrayList;

public class PostDTO {
	    
    private int travelCode, peopleNum, regiNum, viewNum;
	
    private String title, nickname, age, genderType, recruit_Start, t_Start, t_End, intro;
    
    private ArrayList<String> themaType;
    
    private ArrayList<String> lon;
    private ArrayList<String> lat;
    private ArrayList<String> placeName;
    
    
	public int getTravelCode() {
		return travelCode;
	}
	public void setTravelCode(int travelCode) {
		this.travelCode = travelCode;
	}
	public int getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	public int getRegiNum() {
		return regiNum;
	}
	public void setRegiNum(int regiNum) {
		this.regiNum = regiNum;
	}
	public int getViewNum() {
		return viewNum;
	}
	public void setViewNum(int viewNum) {
		this.viewNum = viewNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGenderType() {
		return genderType;
	}
	public void setGenderType(String genderType) {
		this.genderType = genderType;
	}
	public String getRecruit_Start() {
		return recruit_Start;
	}
	public void setRecruit_Start(String recruit_Start) {
		this.recruit_Start = recruit_Start;
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
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public ArrayList<String> getThemaType() {
		return themaType;
	}
	public void setThemaType(ArrayList<String> themaType) {
		this.themaType = themaType;
	}
	public ArrayList<String> getLon() {
		return lon;
	}
	public void setLon(ArrayList<String> lon) {
		this.lon = lon;
	}
	public ArrayList<String> getLat() {
		return lat;
	}
	public void setLat(ArrayList<String> lat) {
		this.lat = lat;
	}
	public ArrayList<String> getPlaceName() {
		return placeName;
	}
	public void setPlaceName(ArrayList<String> placeName) {
		this.placeName = placeName;
	}
    
	
    
}
