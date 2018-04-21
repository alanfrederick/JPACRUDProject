package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="baseball_teams")
public class BaseballTeam {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="team_name")
	private String name;
	@Column(name="team_league")
	private String league;
	@Column(name="team_city")
	private String city;
	@Column(name="team_state")
	private String state;
	@Column(name="team_manager_first_name")
	private String managerFirstName;
	@Column(name="team_manager_last_name")
	private String managerLastName;
	@Column(name="team_trivia")
	private String teamTrivia;
	
	
	//end of team fields

	public BaseballTeam() {
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLeague() {
		return league;
	}
	public void setLeague(String league) {
		this.league = league;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getManagerFirstName() {
		return managerFirstName;
	}
	public void setManagerFirstName(String managerFirstName) {
		this.managerFirstName = managerFirstName;
	}
	public String getManagerLastName() {
		return managerLastName;
	}
	public void setManagerLastName(String managerLastName) {
		this.managerLastName = managerLastName;
	}
	public String getTeamTrivia() {
		return teamTrivia;
	}
	public void setTeamTrivia(String teamTrivia) {
		this.teamTrivia = teamTrivia;
	}
	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BaseBallTeam [id=").append(id).append(", name=").append(name).append(", league=").append(league)
				.append(", city=").append(city).append(", state=").append(state).append(", managerFirstName=")
				.append(managerFirstName).append(", managerLastName=").append(managerLastName).append(", teamTrivia=")
				.append(teamTrivia).append("]");
		return builder.toString();
	}
	
	

}
