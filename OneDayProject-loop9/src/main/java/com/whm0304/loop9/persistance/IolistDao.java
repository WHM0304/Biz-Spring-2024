package com.whm0304.loop9.persistance;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.whm0304.loop9.models.IoVO;
import com.whm0304.loop9.models.IolistVO;

public interface IolistDao {
	


	public List<IolistVO> selectAll();
	
	@Select(" SELECT SUM(if(io_input=1 ,io_price,'') * io_quan) as io_impTotal ,"
			+ " SUM(if(io_input=2 ,io_price,'') * io_quan ) as io_expTotal "
			+ " FROM tbl_iolist ")
	public List<IolistVO> Sum();

	

	public int insert(IoVO vo);
	
	@Select(" SELECT * FROM tbl_iolist WHERE io_seq = #{ioSEQ} ")
	public IoVO findById(String ioSeq);
	
	
	@Delete(" DELETE FROM tbl_iolist WHERE io_seq = #{io_seq} ")
	public int delete(String io_seq);
	
	
	public int update(IoVO vo);
		
		
//	UPDATE tbl_customer
//	SET c_name = #{c_name}, c_tel=#{c_tel}
//	WHERE c_code = #{c_code} 

}
