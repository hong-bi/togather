package com.together.web.category;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.together.web.login.IUserDAO;
@Controller
public class CategoryMainController {
	@Autowired
	private SqlSession sqlSession;

	/* @RequestMapping(value = "/bestlist.do") */
	@RequestMapping(value = "/bestlist.do", method = RequestMethod.GET)
	public String bestList(ModelMap model
			, @RequestParam(name="selectValue", defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		
		int totalNum = 0;
		totalNum = dao.nowRecruitTravelNum();
		model.addAttribute("totalNum", totalNum);
		// 1 최신 2 조회 3 찜 4 인기작가
		
		System.out.println("*"+selectValue);
		
		String orderBy = "";
				
		if(selectValue.equals("1"))
			orderBy = "RECRUIT_END";
		else if(selectValue.equals("2"))
			orderBy = "VIEWNUM";
		else if(selectValue.equals("3"))			
			orderBy = "T_JJIM";
		else if(selectValue.equals("4"))
			orderBy = "W_JJIM";		
		
		
		ArrayList<TravelDTO> list = dao.travelInfoBasic(orderBy);
		
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
		model.addAttribute("selectValue", selectValue);
		
		return "category/BestList";
	}
	
	
	
	@RequestMapping(value = "/themalistall.do", method = RequestMethod.GET)
	public String themaListAll(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		
		int totalNum = 0;
		totalNum = dao.nowRecruitTravelNum();
		model.addAttribute("totalNum", totalNum);
		
		System.out.println("*"+selectValue);		
		// 최신 인기 조회 찜 인기작가 여행시작
		TravelDTO dto = new TravelDTO();
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.themaAll(dto);
		
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
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/ThemeListAll";
	}
	
	
	@RequestMapping(value = "/themalistnature.do", method = RequestMethod.GET)
	public String themaListNature(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("1");
		totalNum = dao.themaNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		System.out.println("*"+selectValue);		
		// 최신 인기 조회 찜 인기작가 여행시작
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.themalist(dto);
		
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
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/ThemeListNature";
	}
	

	@RequestMapping(value = "/themalistct.do", method = RequestMethod.GET)
	public String themaListCT(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("2");
		totalNum = dao.themaNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		System.out.println("*"+selectValue);		
		// 최신 인기 조회 찜 인기작가 여행시작
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.themalist(dto);
		
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
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/ThemeListCT";
	}
	
	@RequestMapping(value = "/themalistls.do", method = RequestMethod.GET)
	public String themaListLS(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("3");
		totalNum = dao.themaNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		System.out.println("*"+selectValue);		
		// 최신 인기 조회 찜 인기작가 여행시작
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.themalist(dto);
		
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
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/ThemeListLS";
	}
	
	@RequestMapping(value = "/themalistsf.do", method = RequestMethod.GET)
	public String themaListSF(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("4,5");
		totalNum = dao.themaNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		System.out.println("*"+selectValue);		
		// 최신 인기 조회 찜 인기작가 여행시작
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.themalist(dto);
		
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
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/ThemeListSF";
	}

	@RequestMapping(value = "/themalistother.do", method = RequestMethod.GET)
	public String themaListOther(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("6");
		totalNum = dao.themaNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		System.out.println("*"+selectValue);		
		// 최신 인기 조회 찜 인기작가 여행시작
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.themalist(dto);
		
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
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/ThemeListOther";
	}
	
	
	
	
	// 기간 검색 - 전체 검색
	@RequestMapping(value = "/periodlistall.do")
	public String periodListAll(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		
		int totalNum = 0;
		totalNum = dao.nowRecruitTravelNum();
		model.addAttribute("totalNum", totalNum);

		TravelDTO dto = new TravelDTO();
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.themaAll(dto);
		
		for (TravelDTO travel : list) {
	         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
	         travel.setThemaType(themaType);

	         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
	         travel.setRegion_Start(startDTO.getRegion_Start());
	         travel.setCity_Start(startDTO.getCity_Start());

	         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
	         travel.setRegion_End(endDTO.getRegion_End());
	         travel.setCity_End(endDTO.getCity_End());
	      }
		
		model.addAttribute("travelList", list);
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/PeriodListAll";
	}
	
	
	// 기간 검색 - 1박2일
	@RequestMapping(value = "/periodlist12.do")
	public String periodList12(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("2");
		totalNum = dao.periodNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.periodlist(dto);
		
		for (TravelDTO travel : list) {
	         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
	         travel.setThemaType(themaType);

	         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
	         travel.setRegion_Start(startDTO.getRegion_Start());
	         travel.setCity_Start(startDTO.getCity_Start());

	         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
	         travel.setRegion_End(endDTO.getRegion_End());
	         travel.setCity_End(endDTO.getCity_End());
	      }
		
		model.addAttribute("travelList", list);
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/PeriodList12";
	}
	
	// 기간 검색 - 2박 3일
	@RequestMapping(value = "/periodlist23.do")
	public String periodList23(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("3");
		totalNum = dao.periodNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.periodlist(dto);
		
		for (TravelDTO travel : list) {
	         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
	         travel.setThemaType(themaType);

	         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
	         travel.setRegion_Start(startDTO.getRegion_Start());
	         travel.setCity_Start(startDTO.getCity_Start());

	         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
	         travel.setRegion_End(endDTO.getRegion_End());
	         travel.setCity_End(endDTO.getCity_End());
	      }
		
		model.addAttribute("travelList", list);
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/PeriodList23";
	}
	
	// 기간 검색 - 3박 4일
	@RequestMapping(value = "/periodlist34.do")
	public String periodList34(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("4");
		totalNum = dao.periodNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.periodlist(dto);
		
		for (TravelDTO travel : list) {
	         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
	         travel.setThemaType(themaType);

	         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
	         travel.setRegion_Start(startDTO.getRegion_Start());
	         travel.setCity_Start(startDTO.getCity_Start());

	         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
	         travel.setRegion_End(endDTO.getRegion_End());
	         travel.setCity_End(endDTO.getCity_End());
	      }
		
		model.addAttribute("travelList", list);
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/PeriodList34";
	}
	
	// 기간 검색 - 4박 5일
	@RequestMapping(value = "/periodlist45.do")
	public String periodList45(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("5");
		totalNum = dao.periodNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.periodlist(dto);
		
		for (TravelDTO travel : list) {
	         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
	         travel.setThemaType(themaType);

	         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
	         travel.setRegion_Start(startDTO.getRegion_Start());
	         travel.setCity_Start(startDTO.getCity_Start());

	         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
	         travel.setRegion_End(endDTO.getRegion_End());
	         travel.setCity_End(endDTO.getCity_End());
	      }
		
		model.addAttribute("travelList", list);
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/PeriodList45";
	}
	
	// 기간 검색 - 5박 이상
	@RequestMapping(value = "/periodlistother.do")
	public String periodListOther(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("6");
		totalNum = dao.periodNumOther(dto);
		model.addAttribute("totalNum", totalNum);
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.periodlistOther(dto);
		
		for (TravelDTO travel : list) {
	         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
	         travel.setThemaType(themaType);

	         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
	         travel.setRegion_Start(startDTO.getRegion_Start());
	         travel.setCity_Start(startDTO.getCity_Start());

	         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
	         travel.setRegion_End(endDTO.getRegion_End());
	         travel.setCity_End(endDTO.getCity_End());
	      }
		
		model.addAttribute("travelList", list);
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/PeriodListOther";
	}

	// 지역 검색 - 전체 검색
	@RequestMapping(value = "/regionlistall.do")
	public String regionListAll(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		
		int totalNum = 0;
		totalNum = dao.nowRecruitTravelNum();
		model.addAttribute("totalNum", totalNum);

		TravelDTO dto = new TravelDTO();
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.themaAll(dto);
		
		for (TravelDTO travel : list) {
	         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
	         travel.setThemaType(themaType);

	         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
	         travel.setRegion_Start(startDTO.getRegion_Start());
	         travel.setCity_Start(startDTO.getCity_Start());

	         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
	         travel.setRegion_End(endDTO.getRegion_End());
	         travel.setCity_End(endDTO.getCity_End());
	      }
		
		model.addAttribute("travelList", list);
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/RegionListAll";
	}
	
	// 지역 검색 - 서울
	@RequestMapping(value = "/regionlist1.do")
	public String regionList1(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("1");
		totalNum = dao.regionNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.regionlist(dto);
		
		for (TravelDTO travel : list) {
	         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
	         travel.setThemaType(themaType);

	         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
	         travel.setRegion_Start(startDTO.getRegion_Start());
	         travel.setCity_Start(startDTO.getCity_Start());

	         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
	         travel.setRegion_End(endDTO.getRegion_End());
	         travel.setCity_End(endDTO.getCity_End());
	      }
		
		model.addAttribute("travelList", list);
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/RegionListSeoul";
	}
	
	// 지역 검색 - 경기
	@RequestMapping(value = "/regionlist2.do")
	public String regionList2(ModelMap model
			, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
		ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
		TravelDTO dto = new TravelDTO();
		
		int totalNum = 0;
		dto.setOrderNum("2");
		totalNum = dao.regionNum(dto);
		model.addAttribute("totalNum", totalNum);
		
		if (selectValue.equals("1"))
			dto.setOrderBy("RECRUIT_END DESC");
		else if(selectValue.equals("2"))
			dto.setOrderBy("RATIO DESC");	
		else if(selectValue.equals("3"))	
			dto.setOrderBy("VIEWNUM DESC");	
		else if(selectValue.equals("4"))
			dto.setOrderBy("T_JJIM DESC");		
		else if(selectValue.equals("5"))
			dto.setOrderBy("W_JJIM DESC");		
		else if(selectValue.equals("6"))
			dto.setOrderBy("T_START");	
		
		ArrayList<TravelDTO> list = dao.regionlist(dto);
		
		for (TravelDTO travel : list) {
	         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
	         travel.setThemaType(themaType);

	         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
	         travel.setRegion_Start(startDTO.getRegion_Start());
	         travel.setCity_Start(startDTO.getCity_Start());

	         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
	         travel.setRegion_End(endDTO.getRegion_End());
	         travel.setCity_End(endDTO.getCity_End());
	      }
		
		model.addAttribute("travelList", list);
		
		
		model.addAttribute("selectValue", selectValue);
		
		
		
		return "category/RegionListGyenggi";
	}
	
	// 지역 검색 - 인천
		@RequestMapping(value = "/regionlist3.do")
		public String regionList3(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("3");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);

		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());

		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListInchen";
		}
		
		// 지역 검색 - 강원
		@RequestMapping(value = "/regionlist4.do")
		public String regionList4(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("4");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);

		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());

		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListGangwon";
		}

		
		
		
		
		// 지역 검색 - 제주
		@RequestMapping(value = "/regionlist5.do")
		public String regionList5(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("5");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);

		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());

		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListJeju";
		}
		
		// 지역 검색 - 대전
		@RequestMapping(value = "/regionlist6.do")
		public String regionList6(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("6");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListDaejeon";
		}
	
		// 지역 검색 - 충북
		@RequestMapping(value = "/regionlist7.do")
		public String regionList7(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("7");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListChungbug";
		}
		
		// 지역 검색 - 충남/세종
		@RequestMapping(value = "/regionlist8.do")
		public String regionList8(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("8");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListChungSe";
		}		
		
		// 지역 검색 - 부산
		@RequestMapping(value = "/regionlist9.do")
		public String regionList9(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("9");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListBusan";
		}			
		
		
		// 지역 검색 - 울산
		@RequestMapping(value = "/regionlist10.do")
		public String regionList10(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("10");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListUlsan";
		}		
		
		// 지역 검색 - 경남
		@RequestMapping(value = "/regionlist11.do")
		public String regionList11(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("11");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListGyeongnam";
		}				
		
		// 지역 검색 - 대구
		@RequestMapping(value = "/regionlist12.do")
		public String regionList12(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("12");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListDaegu";
		}		
		
		// 지역 검색 - 경북
		@RequestMapping(value = "/regionlist13.do")
		public String regionList13(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("13");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListGyengbug";
		}			
		
		
		// 지역 검색 - 광주
		@RequestMapping(value = "/regionlist14.do")
		public String regionList14(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("14");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListGwangju";
		}			
		
		// 지역 검색 - 전남
		@RequestMapping(value = "/regionlist15.do")
		public String regionList15(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("15");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListJeonnam";
		}				
		
		// 지역 검색 - 전북
		@RequestMapping(value = "/regionlist16.do")
		public String regionList16(ModelMap model
				, @RequestParam(name="selectValue" ,defaultValue="1") String selectValue) throws IOException {
			ITravelDAO dao = sqlSession.getMapper(ITravelDAO.class);
			TravelDTO dto = new TravelDTO();
			
			int totalNum = 0;
			dto.setOrderNum("16");
			totalNum = dao.regionNum(dto);
			model.addAttribute("totalNum", totalNum);
			
			if (selectValue.equals("1"))
				dto.setOrderBy("RECRUIT_END DESC");
			else if(selectValue.equals("2"))
				dto.setOrderBy("RATIO DESC");	
			else if(selectValue.equals("3"))	
				dto.setOrderBy("VIEWNUM DESC");	
			else if(selectValue.equals("4"))
				dto.setOrderBy("T_JJIM DESC");		
			else if(selectValue.equals("5"))
				dto.setOrderBy("W_JJIM DESC");		
			else if(selectValue.equals("6"))
				dto.setOrderBy("T_START");	
			
			ArrayList<TravelDTO> list = dao.regionlist(dto);
			
			for (TravelDTO travel : list) {
		         ArrayList<String> themaType = dao.tThemaType(travel.getTravelCode());
		         travel.setThemaType(themaType);
	
		         TravelDTO startDTO = dao.tCityStart(travel.getTravelCode());
		         travel.setRegion_Start(startDTO.getRegion_Start());
		         travel.setCity_Start(startDTO.getCity_Start());
	
		         TravelDTO endDTO = dao.tCityEnd(travel.getTravelCode());
		         travel.setRegion_End(endDTO.getRegion_End());
		         travel.setCity_End(endDTO.getCity_End());
		      }
			
			model.addAttribute("travelList", list);
			
			
			model.addAttribute("selectValue", selectValue);
			
			
			
			return "category/RegionListJeonbug";
		}			
		
		
		
}
