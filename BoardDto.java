package org.yakusoku.model;

public class BoardDto {
	int no, readcnt, rep_root, rep_step, rep_indent;
	String author, email, title, content, password, writeday;
	
public BoardDto(String author, String title ,String content) {
	this(0, author, title, content, "", 0, 0, 0, 0);
}
	

	
	public BoardDto() {
		this(0, "", "", "", "", 0, 0, 0, 0);
		// 객체 생성용 디폴트 생성자
	}
	
	
	
	public BoardDto(int no, String author, String title, String writeday, int readcnt) {
		this(no, author, title, "", writeday, readcnt, 0, 0, 0);
		// 리스트 출력용 생성자. dao.selectAll과 엮여있으니 수정할 떄 같이 할 것.
	}
	
	public BoardDto(int no, String author, String title, String content) {
		this(no, author, title, content, "", 0, 0, 0, 0);
		// 입력용 생성자. dao.insert와 엮여있으니 수정할 때 같이 할 것.
	}
	
	public BoardDto(int no, String author, String title, String content,  String writeday, int readcnt) {
		this(no, author, title, content, writeday, readcnt, 0,0,0);
		// 디테일 출력용 생성자. dao.selectOne과 엮여있으니 수정할 때 같이 할 것.
	}
	public BoardDto(int no, String title, String content) {
		this(no, "", title, content, "", 0, 0,0,0);
		// 수정용 생성자. dao.update와 엮여있으니 수정할 때 같이 할 것.
	}
	
	public BoardDto(int no, String author, String title, String content,
			String writeday, int readcnt, int rep_root, int rep_step, int rep_indent) {
		this.no = no;
		this.author = author;
		this.title = title;
		this.content = content;
		this.writeday = writeday;
		this.readcnt = readcnt;
		this.rep_root = rep_root;
		this.rep_step = rep_step;
		this.rep_indent = rep_indent;
	}
	
	@Override
	public String toString() {
		return "BoardDto [no=" + no + ", readcnt=" + readcnt + ", rep_root=" + rep_root + ", rep_step=" + rep_step
				+ ", rep_indent=" + rep_indent + ", author=" + author + ", email=" + email + ", title=" + title
				+ ", content=" + content + ", password=" + password + ", writeday=" + writeday + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((author == null) ? 0 : author.hashCode());
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + no;
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + readcnt;
		result = prime * result + rep_indent;
		result = prime * result + rep_root;
		result = prime * result + rep_step;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((writeday == null) ? 0 : writeday.hashCode());
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
		BoardDto other = (BoardDto) obj;
		if (author == null) {
			if (other.author != null)
				return false;
		} else if (!author.equals(other.author))
			return false;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (no != other.no)
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (readcnt != other.readcnt)
			return false;
		if (rep_indent != other.rep_indent)
			return false;
		if (rep_root != other.rep_root)
			return false;
		if (rep_step != other.rep_step)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (writeday == null) {
			if (other.writeday != null)
				return false;
		} else if (!writeday.equals(other.writeday))
			return false;
		return true;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getReadcnt() {
		return readcnt;
	}

	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}

	public int getRep_root() {
		return rep_root;
	}

	public void setRep_root(int rep_root) {
		this.rep_root = rep_root;
	}

	public int getRep_step() {
		return rep_step;
	}

	public void setRep_step(int rep_step) {
		this.rep_step = rep_step;
	}

	public int getRep_indent() {
		return rep_indent;
	}

	public void setRep_indent(int rep_indent) {
		this.rep_indent = rep_indent;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getWriteday() {
		return writeday;
	}

	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}

}
