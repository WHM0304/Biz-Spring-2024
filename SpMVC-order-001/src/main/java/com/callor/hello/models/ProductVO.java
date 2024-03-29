package com.callor.hello.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ProductVO {
	/*
	 *  p_code	varchar(6)
		p_name	varchar(25)
		p_item	varchar(25)
		p_price	int
	 */
	private String p_code;
	private String p_name;
	private String p_item;
	private int p_price;

}
