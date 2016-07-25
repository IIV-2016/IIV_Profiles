package model.domain;

import java.util.Arrays;

public class TeamBean {
	private int number;
	private String name;
	private String country;
	private String organization;
	private String year;
	private String introduce;
	private String movie;
	private VolunteerBean[] volunteer;

	public TeamBean() { }

	public TeamBean(int number, String country) {
		this.number = number;
		this.country = country;
	}

	public TeamBean(int number, String name, VolunteerBean[] volunteer) {
		this.number = number;
		this.name = name;
		this.volunteer = volunteer;
	}

	public TeamBean(int number, String name, String country, String organization, String year, String introduce,
			String movie) {
		this.number = number;
		this.name = name;
		this.country = country;
		this.organization = organization;
		this.year = year;
		this.introduce = introduce;
		this.movie = movie;
	}

	public TeamBean(int number, String name, String introduce, String movie, VolunteerBean[] volunteer) {
		this.number = number;
		this.name = name;
		this.introduce = introduce;
		this.movie = movie;
		this.volunteer = volunteer;
	}

	public TeamBean(int number, String name, String country, String organization, String year, String introduce,
			String movie, VolunteerBean[] volunteer) {
		this.number = number;
		this.name = name;
		this.country = country;
		this.organization = organization;
		this.year = year;
		this.introduce = introduce;
		this.movie = movie;
		this.volunteer = volunteer;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
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

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("TeamBean [number=");
		builder.append(number);
		builder.append(", name=");
		builder.append(name);
		builder.append(", country=");
		builder.append(country);
		builder.append(", organization=");
		builder.append(organization);
		builder.append(", year=");
		builder.append(year);
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
