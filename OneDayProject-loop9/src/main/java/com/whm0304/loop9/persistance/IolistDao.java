package com.whm0304.loop9.persistance;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.whm0304.loop9.models.IoVO;
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

	
	@Insert(" INSERT INTO tbl_iolist "
			+ " (io_pname , io_input, io_price, io_quan  ) "
			+ " VALUES(#{io_pname},#{io_input},#{io_price},#{io_quan}) ")
	public int insert(IolistVO vo);
	
	@Select(" SELECT * FROM tbl_iolist WHERE io_seq = #{ioSEQ} ")
	public IoVO findById(String ioSeq);
	
	
	@Delete(" DELETE FROM tbl_iolist WHERE io_seq = #{io_seq} ")
	public int delete(String io_seq);
	
	@Update(" UPDATE tbl_iolist SET io_seq =#{io_seq} , io_pname=#{io_pname} , io_date=#{io_date} "
			+ " io_time=#{io_time}, io_input = #{io_input} , io_price=#{io_price} , "
			+ " io_quan = #{io_quan} io_total =#{io_quan} * #{io_price} WHERE io_seq = #{io_seq} ")
	public int update(IolistVO vo);
		
		
//	UPDATE tbl_customer
//	SET c_name = #{c_name}, c_tel=#{c_tel}
//	WHERE c_code = #{c_code} 

}
