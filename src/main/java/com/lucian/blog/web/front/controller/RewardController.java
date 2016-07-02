package com.lucian.blog.web.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by You on 2016/6/22.
 */
@Controller
@RequestMapping("/reward")
public class RewardController {


    @RequestMapping( method = RequestMethod.GET)
    public String reward( ){
/*
  @PathVariable("yearMonth") Date yearMonth,
                       @RequestParam(value = "page", defaultValue = "1") int page, Model model
  model.addAttribute("page", postManager.listByMonth(yearMonth, page, 10));
        model.addAttribute(WebConstants.PRE_TITLE_KEY, DateUtils.formatDate("MMM,yyyy", yearMonth));

        model.addAttribute("archive", yearMonth);*/
        return "common/reward";
    }
}
