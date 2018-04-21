package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class BaseballTeamTest {
	
	private EntityManagerFactory emf;
	private EntityManager em;
	
	@Test
	@DisplayName("Test baseball team entity mappings")
	void test_team_entity_mappings() {
		BaseballTeam team = em.find(BaseballTeam.class, 1);
		assertEquals("Texas Rangers", team.getName());
	}
	
	@BeforeEach
	public void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("CrudApp");
		em = emf.createEntityManager();
	}

	@AfterEach
	public void tearDown() throws Exception {
		em.close();
		emf.close();
	}

}
