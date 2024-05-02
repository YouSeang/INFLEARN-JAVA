package test;

public class BeanTest2 {
	private String id;
	private String password;
	private String name;
	private String birth;
	private String hobby[];
	private String introduction;
	private boolean inValid;
	private boolean passwordValid;
	
	
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public boolean isInValid() {
		return inValid;
	}
	public void setInValid(boolean inValid) {
		this.inValid = inValid;
	}
	public boolean isPasswordValid() {
		return passwordValid;
	}
	public void setPasswordValid(boolean passwordValid) {
		this.passwordValid = passwordValid;
	}
	
	

}
