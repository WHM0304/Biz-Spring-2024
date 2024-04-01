package com.whm0304.loop9.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.whm0304.loop9.models.IolistVO;
import com.whm0304.loop9.persistance.IolistDao;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/iolist" ,method=RequestMethod.GET)
public class IolistController {
	IolistDao iolistDao;
	public IolistController(IolistDao iolistDao) {
		this.iolistDao = iolistDao;
	}
	
	
	@RequestMapping(value={"/",""} ,method=RequestMethod.GET)
	public String home(Model model) {
		List<IolistVO> IoList = iolistDao.selectAll();
		List<IolistVO> total = iolistDao.Sum();
		log.debug("정보{}",total);
		model.addAttribute("IOLIST",IoList);
		model.addAttribute("total",total);
		return "iolist/list";
		
	}

}
