package model.domain;

import java.util.Arrays;

public class TeamBean {
	private String team;
	private String teamCountry;
	private VolunteerBean[] volunteer;
	
	public TeamBean() { }

	public TeamBean(String team, VolunteerBean[] volunteer) {
		this.team = team;
		this.volunteer = volunteer;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getTeamCountry() {
		return volunteer[0].getCountry();
	}

	public void setTeamCountry(String teamCountry) {
		this.teamCountry = teamCountry;
	}

	public VolunteerBean[] getVolunteer() {
		return volunteer;
	}

	public void setVolunteer(VolunteerBean[] volunteer) {
		this.volunteer = volunteer;
	}
	
	public String getTeamMemberName(){
		StringBuilder builder = new StringBuilder();
		for (int i=0; i<volunteer.length; i++){
			builder.append(volunteer[i]);
		}
		return builder.toString();
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("TeamBean [team=");
		builder.append(team);
		builder.append(", volunteer=");
		builder.append(Arrays.toString(volunteer));
		builder.append("]");
		return builder.toString();
	}
}
