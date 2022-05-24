package org.yakusoku.model;

public class UserDto {
   private int no;
   private String id;
   private String pw;
   private String phone;
   private String nickname;
   private String photo;
   private String gender;
   private int age;
   private String job;
   private String home;
   private String religion;
   private String body;
   private String divorce;
   private String other;
   
   public UserDto() {
      this(0, "", "", "", "", "", 0, "", "", "", "", "", "");
   }
   
   public UserDto(int no, String phone, String nickname, String job, String home, String religion, String body, String divorce, String other) {
      this(no, "", "", phone, nickname, "", 0, job, home, religion, body, divorce, other);
   } // update용 생성자.
   
   public UserDto(int no, String id, String pw, String phone, String nickname, String gender,
         int age, String job, String home, String religion, String body, String divorce, String other) {
      this.no = no;
      this.id = id;
      this.pw = pw;
      this.phone = phone;
      this.nickname = nickname;
      this.gender = gender;
      this.age = age;
      this.job = job;
      this.home = home;
      this.religion = religion;
      this.body = body;
      this.divorce = divorce;
      this.other = other;
   }

public int getNo() {
	return no;
}

public void setNo(int no) {
	this.no = no;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getPw() {
	return pw;
}

public void setPw(String pw) {
	this.pw = pw;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getNickname() {
	return nickname;
}

public void setNickname(String nickname) {
	this.nickname = nickname;
}

public String getPhoto() {
	return photo;
}

public void setPhoto(String photo) {
	this.photo = photo;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public int getAge() {
	return age;
}

public void setAge(int age) {
	this.age = age;
}

public String getJob() {
	return job;
}

public void setJob(String job) {
	this.job = job;
}

public String getHome() {
	return home;
}

public void setHome(String home) {
	this.home = home;
}

public String getReligion() {
	return religion;
}

public void setReligion(String religion) {
	this.religion = religion;
}

public String getBody() {
	return body;
}

public void setBody(String body) {
	this.body = body;
}

public String getDivorce() {
	return divorce;
}

public void setDivorce(String divorce) {
	this.divorce = divorce;
}

public String getOther() {
	return other;
}

public void setOther(String other) {
	this.other = other;
}

@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + age;
	result = prime * result + ((body == null) ? 0 : body.hashCode());
	result = prime * result + ((divorce == null) ? 0 : divorce.hashCode());
	result = prime * result + ((gender == null) ? 0 : gender.hashCode());
	result = prime * result + ((home == null) ? 0 : home.hashCode());
	result = prime * result + ((id == null) ? 0 : id.hashCode());
	result = prime * result + ((job == null) ? 0 : job.hashCode());
	result = prime * result + ((nickname == null) ? 0 : nickname.hashCode());
	result = prime * result + no;
	result = prime * result + ((other == null) ? 0 : other.hashCode());
	result = prime * result + ((phone == null) ? 0 : phone.hashCode());
	result = prime * result + ((photo == null) ? 0 : photo.hashCode());
	result = prime * result + ((pw == null) ? 0 : pw.hashCode());
	result = prime * result + ((religion == null) ? 0 : religion.hashCode());
	return result;
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	UserDto other = (UserDto) obj;
	if (age != other.age)
		return false;
	if (body == null) {
		if (other.body != null)
			return false;
	} else if (!body.equals(other.body))
		return false;
	if (divorce == null) {
		if (other.divorce != null)
			return false;
	} else if (!divorce.equals(other.divorce))
		return false;
	if (gender == null) {
		if (other.gender != null)
			return false;
	} else if (!gender.equals(other.gender))
		return false;
	if (home == null) {
		if (other.home != null)
			return false;
	} else if (!home.equals(other.home))
		return false;
	if (id == null) {
		if (other.id != null)
			return false;
	} else if (!id.equals(other.id))
		return false;
	if (job == null) {
		if (other.job != null)
			return false;
	} else if (!job.equals(other.job))
		return false;
	if (nickname == null) {
		if (other.nickname != null)
			return false;
	} else if (!nickname.equals(other.nickname))
		return false;
	if (no != other.no)
		return false;
	if (this.other == null) {
		if (other.other != null)
			return false;
	} else if (!this.other.equals(other.other))
		return false;
	if (phone == null) {
		if (other.phone != null)
			return false;
	} else if (!phone.equals(other.phone))
		return false;
	if (photo == null) {
		if (other.photo != null)
			return false;
	} else if (!photo.equals(other.photo))
		return false;
	if (pw == null) {
		if (other.pw != null)
			return false;
	} else if (!pw.equals(other.pw))
		return false;
	if (religion == null) {
		if (other.religion != null)
			return false;
	} else if (!religion.equals(other.religion))
		return false;
	return true;
}

@Override
public String toString() {
	return "UserDto [no=" + no + ", id=" + id + ", pw=" + pw + ", phone=" + phone + ", nickname=" + nickname
			+ ", photo=" + photo + ", gender=" + gender + ", age=" + age + ", job=" + job + ", home=" + home
			+ ", religion=" + religion + ", body=" + body + ", divorce=" + divorce + ", other=" + other + "]";
}

}