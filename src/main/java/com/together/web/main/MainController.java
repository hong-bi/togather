package com.together.web.main;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	// 진입하자마자 메인페이지로 연결

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String beforeLoginMain(Locale locale, Model model) 
	{
		return "posts/PostInquiry";
	}

	/*
	 * // header에서 로고 눌렀을 때 메인페이지로 연결
	 * 
	 * @RequestMapping(value = "/beforemain.do", method = RequestMethod.GET) public
	 * String beforeLoginMainPage(Locale locale, Model model) { return "home";
	 * System.out.println("진입"); return "main/before/beforeLogin"; }
	 */

	//
	@RequestMapping(value = "/111.do", method = RequestMethod.GET)
	public String afterLogin(Locale locale, Model model) {
		/* return "home"; */
		System.out.println("진입");
		return "posts/write";
	}

	/*
	 * // 회원가입폼으로 연결
	 * 
	 * @RequestMapping(value = "/joinform.do", method = RequestMethod.GET) public
	 * String join(Locale locale, Model model) { return "home";
	 * System.out.println("진입"); return "login/Join"; }
	 * 
	 * // 로그인폼으로 연결
	 * 
	 * @RequestMapping(value = "/login.do", method = RequestMethod.GET) public
	 * String login(Locale locale, Model model) { return "home";
	 * System.out.println("진입"); return "login/Login"; }
	 * 
	 */
	/*
	 * // 전체카테고리 - 테마
	 * 
	 * @RequestMapping(value = "/category.do", method = RequestMethod.GET) public
	 * String theme(@RequestParam(name = "value", defaultValue = "allTheme") String
	 * value) { if (value.equals("allTheme")) return "category/ThemeListAll"; else
	 * if (value.equals("nature")) return "category/ThemeListNature"; else if
	 * (value.equals("culture")) return "category/ThemeListCT"; else if
	 * (value.equals("sports")) return "category/ThemeListLS"; else if
	 * (value.equals("shopping")) return "category/ThemeListSF"; else return
	 * "category/ThemeListOther"; }
	 */
	// 전체카테고리 - 지역
	@RequestMapping(value = "/region.do", method = RequestMethod.GET)
	public String region(@RequestParam(name = "value", defaultValue = "allRegion") String value) {
		if (value.equals("seoul"))
			return "category/RegionListSeoul";
		else if (value.equals("gyenggi"))
			return "category/RegionListGyenggi";
		else if (value.equals("inchen"))
			return "category/RegionListInchen";
		else if (value.equals("gangwon"))
			return "category/RegionListGangwon";
		else if (value.equals("jeju"))
			return "category/RegionListJeju";
		else if (value.equals("daejeon"))
			return "category/RegionListDaejeon";
		else if (value.equals("chungbug"))
			return "category/RegionListChungbug";
		else if (value.equals("chungSe"))
			return "category/RegionListChungSe";
		else if (value.equals("busan"))
			return "category/RegionListBusan";
		else if (value.equals("ulsan"))
			return "category/RegionListUlsan";
		else if (value.equals("gyeongnam"))
			return "category/RegionListGyeongnam";
		else if (value.equals("daegu"))
			return "category/RegionListDaegu";
		else if (value.equals("gyeongbug"))
			return "category/RegionListGyengbug";
		else if (value.equals("gwangju"))
			return "category/RegionListGwangju";
		else if (value.equals("jeonnam"))
			return "category/RegionListJeonnam";
		else if (value.equals("jeonbug"))
			return "category/RegionListJeonbug";
		else
			return "category/RegionListAll";
	}

	// 전체카테고리 - 기간
	@RequestMapping(value = "/period.do", method = RequestMethod.GET)
	public String time(@RequestParam(name = "value", defaultValue = "allPeriod") String value) {
		if (value.equals("allPeriod"))
			return "category/PeriodListAll";
		else if (value.equals("12"))
			return "category/PeriodList12";
		else if (value.equals("23"))
			return "category/PeriodList23";
		else if (value.equals("34"))
			return "category/PeriodList34";
		else if (value.equals("45"))
			return "category/PeriodList45";
		else
			return "category/PeriodListOther";
	}

	// 베스트
	@RequestMapping(value = "/best.do", method = RequestMethod.GET)
	public String best(Locale locale, Model model) {
		/* return "home"; */
		System.out.println("진입");
		return "category/BestList";
	}

}
