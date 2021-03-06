package model.domain;

public class VolunteerBean {
	private int number;
	private String firstname;
	private String lastname;
	private String birth;
	private String gender;
	private String university;
	private String majorclass;
	private String major;
	private String expertise;
	private String experience;
	private String role;
	private String email;
	private String image;
	private int teamNumber;
	private String password;
	private boolean passwordRenew;
	private TeamBean team;

	public VolunteerBean() { }

	public VolunteerBean(int number, String firstname, String lastname, boolean passwordRenew) {
		this.number = number;
		this.firstname = firstname;
		this.lastname = lastname;
		this.passwordRenew = passwordRenew;
	}

	public VolunteerBean(int number, String firstname, String lastname, String birth, String gender, String university,
			String majorclass, String major, String expertise, String experience, String role, String email,
			String image, int teamNumber) {
		this.number = number;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birth = birth;
		this.gender = gender;
		this.university = university;
		this.majorclass = majorclass;
		this.major = major;
		this.expertise = expertise;
		this.experience = experience;
		this.role = role;
		this.email = email;
		this.image = image;
		this.teamNumber = teamNumber;
	}
	
	public VolunteerBean(int number, String firstname, String lastname, String birth, String gender, String university,
			String majorclass, String major, String expertise, String experience, String role, String email,
			String image, int teamNumber, TeamBean team) {
		super();
		this.number = number;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birth = birth;
		this.gender = gender;
		this.university = university;
		this.majorclass = majorclass;
		this.major = major;
		this.expertise = expertise;
		this.experience = experience;
		this.role = role;
		this.email = email;
		this.image = image;
		this.teamNumber = teamNumber;
		this.team = team;
	}
	
	public VolunteerBean(int number) {
		super();
		this.number = number;
	}
	
	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getTeamNumber() {
		return teamNumber;
	}

	public void setTeamNumber(int teamNumber) {
		this.teamNumber = teamNumber;
	}
	
	public TeamBean getTeam() {
		return team;
	}

	public void setTeam(TeamBean team) {
		this.team = team;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean getPasswordRenew() {
		return passwordRenew;
	}

	public void setPasswordRenew(boolean passwordRenew) {
		this.passwordRenew = passwordRenew;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("VolunteerBean [number=");
		builder.append(number);
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
		builder.append(", role=");
		builder.append(role);
		builder.append(", email=");
		builder.append(email);
		builder.append(", image=");
		builder.append(image);
		builder.append(", teamNumber=");
		builder.append(teamNumber);
		builder.append(", team=");
		builder.append(team);
		builder.append("]");
		return builder.toString();
	}
}