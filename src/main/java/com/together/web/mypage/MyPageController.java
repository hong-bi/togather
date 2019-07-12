package com.together.web.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	
	@RequestMapping(value = "/myongoing.do")
	public String myongoing()
	{
		return "mypage/TripOnGoing";
	}
	
	@RequestMapping(value = "/mylasttrip.do")
	public String mylasttrip()
	{
		return "mypage/LastTrip";
	}
	
	@RequestMapping(value = "/myupload.do")
	public String myupload()
	{
		return "mypage/UploadPost";
	}
	
	@RequestMapping(value = "/mystorage.do")
	public String mystorage()
	{
		return "mypage/TempPost";
	}
	
	@RequestMapping(value = "/myjjim.do")
	public String myjjim()
	{
		return "mypage/JjimPost";
	}
	
	@RequestMapping(value = "/myfavorwriter.do")
	public String myfavorwriter()
	{
		return "mypage/FavorWriter";
	}
	
	@RequestMapping(value = "/myfavortheme.do")
	public String myfavortheme()
	{
		return "mypage/FavorTheme";
	}
	
	@RequestMapping(value = "/mycommunity.do")
	public String mycommunity()
	{
		return "mypage/Community";
	}
	
	@RequestMapping(value = "/mymessage.do")
	public String mymessage()
	{
		return "mypage/Message";
	}
	
	@RequestMapping(value = "/myeval1.do")
	public String myeval1()
	{
		return "mypage/Eval1";
	}
	
	@RequestMapping(value = "/myeval2.do")
	public String myeval2()
	{
		return "mypage/Eval2";
	}
	
	@RequestMapping(value = "/useredit.do")
	public String useredit()
	{
		return "login/PwCheckEdit";
	}
}
