package cn.wmyskxz.controller;

import cn.wmyskxz.pojo.ReferalLink;
import cn.wmyskxz.service.ReferalLinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * ReferalLink 控制器
 */
@Controller
@RequestMapping("/admin")
public class ReferalLinkController {

	@Autowired
	ReferalLinkService referalLinkService;

	@RequestMapping("/listLink")
	public String list(Model model) {
		List<ReferalLink> links = referalLinkService.listAll();
		model.addAttribute("links", links);
		return "admin/listLink";
	}

	@RequestMapping("/updateLink")
	public String update(ReferalLink link) {
		referalLinkService.update(link);
		return "redirect:listLink";
	}
}
