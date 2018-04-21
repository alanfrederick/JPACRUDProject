package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrud.entities.BaseballTeam;

@Component
@Transactional
public class BaseballDAOImpl implements BaseballDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<BaseballTeam> index() {
		String query = "SELECT b FROM BaseballTeam b ORDER BY b.name";
		List<BaseballTeam> teams = em.createQuery(query, BaseballTeam.class).getResultList();
		return teams;
	}

	@Override
	public List<BaseballTeam> showTeam(String teamName) {
		String query = "SELECT b FROM BaseballTeam b WHERE b.name = :teamName";
		List<BaseballTeam> team = em.createQuery(query, BaseballTeam.class).setParameter("teamName", teamName).getResultList();
		return team;
	}

	@Override
	public BaseballTeam showTeamById(int id) {
		BaseballTeam team = em.find(BaseballTeam.class, id);
		return team;
	}
	


}
