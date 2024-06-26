package com.callor.gallery;

import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.callor.gallery.models.GalleryVO;
import com.callor.gallery.service.GalleryService;
import com.callor.gallery.utils.Names;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
public class HomeController {
	private final GalleryService galleryService;
	
	public HomeController(GalleryService galleryService) {
		this.galleryService = galleryService;
	}



	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home( Model model) {
			List<GalleryVO> gallerys = galleryService.selectAll();
			model.addAttribute("GALLERYS" , gallerys);
		return "home";
	}
	
	
	
	
	
	
	
	
	/**
	 * 
	 * Single File 을 Controller 에서 받을 때는 MultipartFile 을 사용하여 받고
	 * 이때는 @RequestParam("name") 속성을 붙여준다.
	 * 
	 * 하지만 Multi File 을 Controller 에서 받을때는 
	 * MultipartHttpServletRequest 를 사용하여 받고
	 * 이때는 절대 @RequestParam() 속성을 사용하면 안된다.
	 */
	@GetMapping(value="/insert")
	public String insert() {
		return "insert";
	}
	
	@PostMapping(value="/insert")
	public String insert(GalleryVO galleryVO, MultipartHttpServletRequest files) {
		log.debug("갤러리 {}" , galleryVO.toString());
		
		// files : form 의 input type = "file" 의 name 속성을 사용
		List<MultipartFile> fileList = files.getFiles(Names.FILES);
		
		for(MultipartFile file : fileList) {
			log.debug("파일 {}" , file.getOriginalFilename());
		}
		
		galleryService.createGallerys(galleryVO, files);
		
		
		return "redirect:/";
		
	}
	
	
	
	
	@GetMapping("/detail/{id}")
	public String detail(@PathVariable("id") String id, Model model) {
		
		GalleryVO gallery = galleryService.selectGalleryOne(id);
		model.addAttribute("GALLERY",gallery);
		return "detail";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		
		int ret = galleryService.delete(id);
		
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
}
