package com.whm0304.loop9.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.whm0304.loop9.models.IoVO;
import com.whm0304.loop9.models.IolistVO;
import com.whm0304.loop9.persistance.IolistDao;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/iolist")
public class IolistController {
	IolistDao iolistDao;

	public IolistController(IolistDao iolistDao) {
		this.iolistDao = iolistDao;
	}

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String home(Model model) {
		List<IolistVO> IoList = iolistDao.selectAll();
		List<IolistVO> total = iolistDao.Sum();
		log.debug("정보{}", total.toString());
		model.addAttribute("IOLIST", IoList);
		model.addAttribute("TOTAL", total);
		return "iolist/list";

	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		return "iolist/input";
	}

	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String insert(IoVO vo) {
		int result = 0;
		try {
			result = iolistDao.insert(vo);
			if (result > 0) {
				return "redirect:/iolist";
			} else {
				return "redirect:/iolist/input";
			}
		} catch (Exception e) {
			return "iolist/input";
		}
		
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("io_seq") String ioSeq, Model model) {

		IoVO IoVO = iolistDao.findById(ioSeq);
		model.addAttribute("LIST", IoVO);
		log.debug(IoVO.toString());
		return "iolist/detail";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("ioSeq") String io_seq) {

		int result = iolistDao.delete(io_seq);

		return "redirect:/iolist";
	}
	
	@RequestMapping(value="/update", method= RequestMethod.GET)
	public String update(@RequestParam("io_seq") String io_seq, Model model) {
		IoVO IoVO = iolistDao.findById(io_seq);
		model.addAttribute("IOLIST",IoVO);
		return "iolist/input";
	}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(IoVO vo) {
		int result = iolistDao.update(vo);
//		log.debug("데이터확인{}",vo);
		return "redirect:/iolist";
		
	}
//	@RequestMapping(value = "/delete/{ccode}", method = RequestMethod.GET)
//	public String delete(@PathVariable("ccode") String cCode) 
}
