package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.BaseballTeam;

public interface BaseballDAO {

	public List<BaseballTeam> index();

	public List<BaseballTeam> showTeam(String teamName);

	public BaseballTeam showTeamById(int id);

	public BaseballTeam createTeam(BaseballTeam team);

	public BaseballTeam updateTeam(int id, BaseballTeam updateTeam);

	public boolean destroy(int id);

}
