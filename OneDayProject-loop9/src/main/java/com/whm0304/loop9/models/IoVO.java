package com.whm0304.loop9.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class IoVO {
	
	private int io_seq ;
	private String io_date;
	private String io_time;
	private String io_input;
	private String io_pname;
	private int io_price;
	private int io_quan;
	private int io_total;

}
