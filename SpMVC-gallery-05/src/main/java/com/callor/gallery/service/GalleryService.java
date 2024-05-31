package com.callor.gallery.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.callor.gallery.models.GalleryVO;

public interface GalleryService {
	
	
	public int createGallerys(GalleryVO galleryVO, MultipartHttpServletRequest files);
	
	
	public List<GalleryVO> selectAll();
	public GalleryVO selectGalleryOne(String gid);




	public int delete(String id);

}
