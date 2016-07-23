package model.domain;

import java.util.Arrays;

public class TeamBean {
	private int teamNum;
	private String team;
	private String introduce;
	private String movie;
	private VolunteerBean[] volunteer;

	public TeamBean() { }

	public TeamBean(int teamNum, String team) {
		this.teamNum = teamNum;
		this.team = team;
	}
	
	public TeamBean(String team, VolunteerBean[] volunteer) {
		this.team = team;
		this.volunteer = volunteer;
	}
	
	public TeamBean(int teamNum, String team, VolunteerBean[] volunteer) {
		this.teamNum = teamNum;
		this.team = team;
		this.volunteer = volunteer;
	}
	
	public TeamBean(int teamNum, String team, String introduce, String movie, VolunteerBean[] volunteer) {
		this.teamNum = teamNum;
		this.team = team;
		this.introduce = introduce;
		this.movie = movie;
		this.volunteer = volunteer;
	}

	public int getTeamNum() {
		return teamNum;
	}

	public void setTeamNum(int teamNum) {
		this.teamNum = teamNum;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getMovie() {
		return movie;
	}

	public void setMovie(String movie) {
		this.movie = movie;
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
		builder.append("TeamBean [teamNum=");
		builder.append(teamNum);
		builder.append(", team=");
		builder.append(team);
		builder.append(", introduce=");
		builder.append(introduce);
		builder.append(", movie=");
		builder.append(movie);
		builder.append(", volunteer=");
		builder.append(Arrays.toString(volunteer));
		builder.append("]");
		return builder.toString();
	}
}
