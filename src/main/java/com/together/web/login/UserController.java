package com.together.web.login;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	// mybatis 객체 의존성 (자동) 주입 !
	@Autowired
	private SqlSession sqlSession;

	// login 컨트롤러
	@RequestMapping(value = "/login.do")
	public String login(UserDTO dto, HttpSession session, HttpServletRequest request) {

		int result = 0;
		int userCode = 0;
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);

		result = dao.login(dto);

		if (result != 0) {
			// 로그인 성공
			userCode = dao.searchUserCode(dto);
			
			session = request.getSession();
			// session.setAttribute("sessionId", dto.getSessionId());
			session.setAttribute("userCode", userCode);
			
			return "login/JoinEdit";
		} else
			return "login/LoginErr";

	}
	
	// 아이디 중복확인
	@RequestMapping(value = "/idcheck.do")
	public void idCheck(String userId, HttpServletResponse response) throws IOException
	{
		int result = 0;
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		result = dao.checkId(userId);
		response.getWriter().print(result);
	}

	// 닉네임 중복확인
	@RequestMapping(value = "/nicknamecheck.do")
	public void nicknameCheck(String nickName, HttpServletResponse response) throws IOException
	{
		int result = 0;
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		result = dao.checkNickname(nickName);
		response.getWriter().print(result);
		
	}
	
	// 이메일 중복확인
	@RequestMapping(value = "/emailcheck.do")
	public void emailCheck(String email, HttpServletResponse response) throws IOException
	{
		int result = 0;
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		result = dao.checkEmail(email);
		response.getWriter().print(result);
		
	}
	
	// 회원가입 성공 후 TBL_USER 테이블에 insert 
	@RequestMapping(value = "/joininsert.do")
	public String userInsert(UserDTO dto)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		dao.add(dto);
		
		int userCode = dao.searchUserCode(dto);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		for (int themaCode : dto.getThemaCode()) {
			map.put("userCode", userCode);
			map.put("themaCode", themaCode);
			dao.addUthema(map);
		}
		
		return "login/JoinSuccess";
	}
	
	@RequestMapping(value = "/loginform.do")
	public String loginForm()
	{
		return "login/Login";
	}
	
	@RequestMapping(value = "/beforemain.do")
	public String beforeMain()
	{
		return "main/before/beforeLogin";
	}
	
	@RequestMapping(value = "/idsearch.do")
	public String idSearch()
	{
		return "login/IdSearch";
	}
	
	@RequestMapping(value = "/pwsearch.do")
	public String pwSearch()
	{
		return "login/PwSearch";
	}
	
	@RequestMapping(value = "/joinform.do")
	public String joinForm()
	{
		return "login/Join";
	}
	
	@RequestMapping(value = "/idsearchsuccess.do", method = RequestMethod.POST)
	public String idSearchSuccess(ModelMap model, UserDTO dto)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		int result = dao.searchId(dto);
		
		if (result != 0) {
			// 아이디 있음
						
			model.addAttribute("userId", dao.searchUserId(dto));			
			return "login/IdSearchSuccess";
		}
		else
			return "login/IdSearchErr";		
	}
	
	
	@RequestMapping(value = "/pwsearchsuccess.do", method = RequestMethod.POST)
	public String pwSearchSuccess(ModelMap model, UserDTO dto)
	{
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		int result = dao.searchPw(dto);
		
		if (result != 0) {
			// 회원 있음						
			model.addAttribute("email", dto.getEmail());			
			return "login/PwSearchSuccess";
		}
		else
			return "login/PwSearchErr";		
	}

}