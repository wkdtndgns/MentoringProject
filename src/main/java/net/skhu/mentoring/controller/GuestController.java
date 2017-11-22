package net.skhu.mentoring.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.mentoring.mapper.ScheduleMapper;
import net.skhu.mentoring.service.NoticeBBSService;
@Controller
@RequestMapping("/")
public class GuestController {
	@Autowired ScheduleMapper scheduleMapper;
	@Autowired NoticeBBSService noticeBBSService;
	@RequestMapping(value={"/","guest/index"})
	public String index(Model model) {
		model.addAttribute("schedules", scheduleMapper.findAll());
		model.addAttribute("notices", noticeBBSService.findFiveNoticePost());
		return "guest/index";
	}
	@RequestMapping("guest/login")
	public String login() {
		return "guest/login";
	}
}
