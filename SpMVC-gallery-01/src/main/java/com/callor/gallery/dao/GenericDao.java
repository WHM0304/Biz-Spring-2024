package com.callor.gallery.dao;

import java.util.List;

import com.callor.gallery.models.BBsVO;

public interface GenericDao<VO, PK> {
	
	public List<VO> selectAll();
	public VO findById(PK pk);
	
	public int insert(VO vo);
	public int update(VO vo);
	public int delete(PK pk);

}
