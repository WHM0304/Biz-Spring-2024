package com.callor.iolist.models;

import lombok.Setter;
import lombok.ToString;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserVO {
	
	private String username;
	private String password;
	private String name;
	private String tel;
	private String email;
	private String role;

}
