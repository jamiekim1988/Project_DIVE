package kr.jungang.dive.user.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserVO {
	private long userNum;
	private String id;
	private String password;
	private String name;
	private char sex;
	private char birthday;
	private String address;
	private String phone;
	private String email;
	private Date regDate;
	private Date updateDate;
	private boolean enabled;
	
	private List<AuthorityVO> authorityList;

	// insertUser Test�� Constructor
	public UserVO(String id, String password) {
		this.id = id;
		this.password = password;
	}

	public UserVO(String id, String password, String name, char sex, char birthday, String address, String phone,
			String email) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}
	
	public void updateUserPhone() {
		setPhone("010-1234-5678");
	}

	public UserVO(String id, String password, String name) {
		this.id = id;
		this.password = password;
		this.name = name;
	}

}
