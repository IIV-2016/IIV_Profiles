package model.domain;

public class VolunteerBean {
	private int memberNum;
	private String firstname;
	private String lastname;
	private String birth;
	private String gender;
	private String university;
	private String majorclass;
	private String major;
	private String expertise;
	private String experience;
	private String team;
	private String country;
	private String org;
	private String role;
	private String email;
	private String link;
	private String year;

	public VolunteerBean() { }

	public VolunteerBean(int memberNum, String country) {
		this.memberNum = memberNum;
		this.country = country;
	}

	public VolunteerBean(int memberNum, String firstname, String lastname, String birth, String gender,
			String university, String majorclass, String major, String expertise, String experience, String team,
			String country, String org, String role, String email, String link, String year) {
		this.memberNum = memberNum;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birth = birth;
		this.gender = gender;
		this.university = university;
		this.majorclass = majorclass;
		this.major = major;
		this.expertise = expertise;
		this.experience = experience;
		this.team = team;
		this.country = country;
		this.org = org;
		this.role = role;
		this.email = email;
		this.link = link;
		this.year = year;
	}

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getMajorclass() {
		return majorclass;
	}

	public void setMajorclass(String majorclass) {
		this.majorclass = majorclass;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getExpertise() {
		return expertise;
	}

	public void setExpertise(String expertise) {
		this.expertise = expertise;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getOrg() {
		return org;
	}

	public void setOrg(String org) {
		this.org = org;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("VolunteerBean [memberNum=");
		builder.append(memberNum);
		builder.append(", firstname=");
		builder.append(firstname);
		builder.append(", lastname=");
		builder.append(lastname);
		builder.append(", birth=");
		builder.append(birth);
		builder.append(", gender=");
		builder.append(gender);
		builder.append(", university=");
		builder.append(university);
		builder.append(", majorclass=");
		builder.append(majorclass);
		builder.append(", major=");
		builder.append(major);
		builder.append(", expertise=");
		builder.append(expertise);
		builder.append(", experience=");
		builder.append(experience);
		builder.append(", team=");
		builder.append(team);
		builder.append(", country=");
		builder.append(country);
		builder.append(", org=");
		builder.append(org);
		builder.append(", role=");
		builder.append(role);
		builder.append(", email=");
		builder.append(email);
		builder.append(", link=");
		builder.append(link);
		builder.append(", year=");
		builder.append(year);
		builder.append("]");
		return builder.toString();
	}
}
