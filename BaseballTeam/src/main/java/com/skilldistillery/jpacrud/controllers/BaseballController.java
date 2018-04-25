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

	/*
	 * Return all teams
	 */
	@RequestMapping(path = "index.do", method = RequestMethod.GET)
	public ModelAndView index() {
		List<BaseballTeam> teams = baseballDAO.index();
		mv.addObject("teams", teams);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;

	}

	/*
	 * Return team by name search
	 */
	@RequestMapping(path = "getTeam.do", method = RequestMethod.GET)
	public ModelAndView showTeam(@RequestParam(name = "teamName") String teamName) {
		List<BaseballTeam> team = baseballDAO.showTeam(teamName);
		mv.addObject("team", team);
		mv.setViewName("WEB-INF/views/showteam.jsp");
		return mv;
	}

	/*
	 * Return team by ID search
	 */
	@RequestMapping(path = "getTeamId.do", method = RequestMethod.GET)
	public ModelAndView showTeamById(@RequestParam(name = "teamId") int id) {
		BaseballTeam team = baseballDAO.showTeamById(id);
		mv.addObject("team", team);
		mv.setViewName("WEB-INF/views/show.jsp");
		return mv;
	}
	
	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public ModelAndView update(@RequestParam(name="id") int id) {
		mv.addObject("team", baseballDAO.showTeamById(id));
		mv.setViewName("WEB-INF/views/updateteam.jsp");
		return mv;
		
	}

	/*
	 * Create new team
	 */
	
	@RequestMapping(path = "createTeam.do", method = RequestMethod.POST)
	public ModelAndView createTeam(BaseballTeam team) {
		team = baseballDAO.createTeam(team);
		mv.addObject("newteam", team);
		mv.setViewName("WEB-INF/views/createteam.jsp");
		return mv;
		
	}
	
	@RequestMapping(path = "updateTeam.do", method = RequestMethod.POST)
	public ModelAndView updateTeam(@RequestParam(name="id") int id, BaseballTeam updateTeam) {
		updateTeam = baseballDAO.updateTeam(id, updateTeam);
		mv.addObject("team", updateTeam);
		mv.setViewName("WEB-INF/views/show.jsp");
		return mv;
		
	}
	
	@RequestMapping(path = "deleteTeam.do", method = RequestMethod.POST)
	public ModelAndView destroy(int id) {
		baseballDAO.destroy(id);
		mv.setViewName("WEB-INF/views/deleteteam.jsp");
		return mv;
		
	}

}
