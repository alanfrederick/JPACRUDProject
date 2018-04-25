package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.mysql.jdbc.BalanceStrategy;
import com.skilldistillery.jpacrud.entities.BaseballTeam;

@Component
@Transactional
public class BaseballDAOImpl implements BaseballDAO {

	@PersistenceContext
	private EntityManager em;

	/*
	 * Return all teams
	 */
	@Override
	public List<BaseballTeam> index() {
		String query = "SELECT b FROM BaseballTeam b ORDER BY b.name";
		List<BaseballTeam> teams = em.createQuery(query, BaseballTeam.class).getResultList();
		return teams;
	}

	// TODO change to search with LIKE %str%
	// currently returns empty list if string isnt 100% exact
	@Override
	/*
	 * Return team by name search
	 */
	public List<BaseballTeam> showTeam(String teamName) {
		String query = "SELECT b FROM BaseballTeam b WHERE b.name = :teamName";
		List<BaseballTeam> team = em.createQuery(query, BaseballTeam.class).setParameter("teamName", teamName)
				.getResultList();
		return team;
	}

	/*
	 * Return team by ID search
	 */
	@Override
	public BaseballTeam showTeamById(int id) {
		BaseballTeam team = em.find(BaseballTeam.class, id);
		return team;
	}

	/*
	 * Create new team
	 */
	@Override
	public BaseballTeam createTeam(BaseballTeam team) {

		em.persist(team);
		em.flush();

		return team;
	}

	/*
	 * Update team
	 */
	@Override
	public BaseballTeam updateTeam(int id, BaseballTeam updateTeam) {

		BaseballTeam managedTeam = em.find(BaseballTeam.class, id);
		managedTeam.setName(updateTeam.getName());
		managedTeam.setLeague(updateTeam.getLeague());
		managedTeam.setCity(updateTeam.getCity());
		managedTeam.setState(updateTeam.getState());
		managedTeam.setManagerFirstName(updateTeam.getManagerFirstName());
		managedTeam.setManagerLastName(updateTeam.getManagerLastName());
		managedTeam.setTeamTrivia(updateTeam.getTeamTrivia());

		em.persist(managedTeam);
		em.flush();

		return managedTeam;
	}

	/*
	 * Destroy team
	 */
	@Override
	public boolean destroy(int id) {

		try {
			BaseballTeam b = em.find(BaseballTeam.class, id);
			em.remove(b);
			return true;
		} catch (Exception e) {
			System.err.println("******_Ruh_ _Roh_******");
			return false;
		}
	}

}
