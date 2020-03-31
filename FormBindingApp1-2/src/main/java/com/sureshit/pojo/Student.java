package com.sureshit.pojo;
import lombok.Data;
@Data
public class Student {
	private int sid;
	private String sname;
	private String saddr;
	private String email;
	private char[] password;
	private String country;
	private String[] hobbies;
	private String gender;
}