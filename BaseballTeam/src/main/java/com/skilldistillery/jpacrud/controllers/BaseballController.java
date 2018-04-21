package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.BaseballDAO;
import com.skilldistillery.jpacrud.entities.BaseballTeam;

@Controller
public class BaseballController {
	static ModelAndView mv = new ModelAndView();

	@Autowired
	private BaseballDAO baseballDAO;

	@RequestMapping(path = "index.do", method = RequestMethod.GET)
	public ModelAndView index() {
		List<BaseballTeam> teams = baseballDAO.index();
		mv.addObject("teams", teams);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;

	}

	@RequestMapping(path = "getTeam.do", method = RequestMethod.GET)
	public ModelAndView showTeam(@RequestParam(name = "teamName") String teamName) {
		List<BaseballTeam> team = baseballDAO.showTeam(teamName);
		mv.addObject("team", team);
		mv.setViewName("WEB-INF/views/showteam.jsp");
		return mv;
	}

	@RequestMapping(path = "getTeamId.do", method = RequestMethod.GET)
	public ModelAndView showTeamById(@RequestParam(name = "teamId") int id) {
		BaseballTeam team = baseballDAO.showTeamById(id);
		mv.addObject("team", team);
		mv.setViewName("WEB-INF/views/show.jsp");
		return mv;
	}

}
