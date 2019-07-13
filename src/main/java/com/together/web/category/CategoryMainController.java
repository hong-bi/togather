package com.together.web.category;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class CategoryMainController {
	@Autowired
	private SqlSession sqlSession;

	/* @RequestMapping(value = "/bestlist.do") */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String bestList(ModelMap model) throws IOException {
			
		
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);

		int totalNum = 0;
		totalNum = dao.nowRecruitTravelNum();
		model.addAttribute("totalNum", totalNum);
		
		ArrayList<TravelDTO> list = dao.travelInfoBasic();
		
		for(TravelDTO travel : list)
		{
			ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
			travel.setThemaType(themaType);
			
			TravelDTO start = dao.tCityStart(travel.getTravelCode());
			travel.setRegion_Start(start.getRegion_Start());
			travel.setCity_Start(start.getCity_Start());
			
			TravelDTO end = dao.tCityEnd(travel.getTravelCode());
			travel.setRegion_End(end.getRegion_End());
			travel.setCity_End(end.getCity_End());	
			
		}
		
		model.addAttribute("travelList", list);
		
	

		
		
		
		
		
		
		return "category/BestList";

	}

}
