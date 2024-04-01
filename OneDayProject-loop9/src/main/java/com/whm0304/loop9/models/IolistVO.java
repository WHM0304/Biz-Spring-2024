package com.whm0304.loop9.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class IolistVO {
	/*
	 * io_seq	INT	 AUTO_INCREMENT	PRIMARY KEY ,
		io_date	VARCHAR(10)	NOT NULL,	
		io_time	VARCHAR(10)	NOT NULL,	
		io_input	VARCHAR(1)	NOT NULL	,
		io_pname	VARCHAR(30)	NOT NULL	,
		io_price	INT	NOT NULL	,
		io_quan	INT		,
		io_total	INT		
	 */
	
	private int io_seq ;
	private String io_date;
	private String io_time;
	private String io_input;
	private String io_pname;
	private int io_import;
	private int io_export;
	private int io_quan;
	private int io_impTotal;
	private int io_expTotal;
}
