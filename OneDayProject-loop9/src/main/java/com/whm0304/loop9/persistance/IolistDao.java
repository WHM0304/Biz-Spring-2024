package com.whm0304.loop9.persistance;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.whm0304.loop9.models.IolistVO;

public interface IolistDao {
	
	
//	@Select(" SELECT * FROM tbl_temp ")
	@Select(" SELECT io_seq , io_date, io_time , io_input, io_pname "
			+ " , if(io_input=1 , io_price,'') as io_import "
			+ " , if(io_input=2 , io_price,'') as io_export, "
			+ " io_quan, if(io_input=1 ,io_quan * io_price,'') "
			+ " as io_impTotal ,if(io_input=2 ,io_quan * io_price,'') as io_expTotal "
			+ " FROM tbl_iolist "
			+ " GROUP BY io_seq ")
	public List<IolistVO> selectAll();
	
	@Select(" SELECT SUM(if(io_input=1 ,io_price,'') * io_quan) as io_impTotal ,"
			+ " SUM(if(io_input=2 ,io_price,'') * io_quan ) as io_expTotal "
			+ " FROM tbl_iolist ")
	public List<IolistVO> Sum();

}
