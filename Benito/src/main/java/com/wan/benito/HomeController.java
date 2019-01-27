package com.wan.benito;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wan.benito.DTO.MemberDTO;
import com.wan.benito.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("home")
	public String home() {
		
		return "home";
	}
	
	
	@RequestMapping("loginForm")
	public String loginForm() {
		
		return "loginForm";
	}
	
	@RequestMapping("joinForm")
	public String joinForm() {
		
		
		return "joinForm";
	}
	
	@RequestMapping("join")
	public String join(MemberDTO memberDto) {
		memberService.memberRegister(memberDto);
		
		return "home";
	}
	
	
	@RequestMapping(value = "login",method = RequestMethod.POST)
	public String login(MemberDTO memberDto, HttpSession session) {

		MemberDTO mem = memberService.memberSearch(memberDto);
		
		if(mem == null) {
			return "loginForm";
		}else {
			session.setAttribute("member", mem);
			return "home";
		}
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "home";
	}
	
	@RequestMapping("modifyForm")
	public String modifyForm() {
		
		return "modifyForm";
	}
	
	@RequestMapping(value = "modify",method = RequestMethod.POST)
	public String modify(MemberDTO memberDto) {
		
		
		
		return "modifyForm";
	}
	
	
}
