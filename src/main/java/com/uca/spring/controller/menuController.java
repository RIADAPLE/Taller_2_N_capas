package com.uca.spring.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class menuController {
  @RequestMapping(value = { "/" }, method = RequestMethod.GET)
  public ModelAndView index(HttpServletRequest request) {
    ModelAndView model = new ModelAndView();
    model.setViewName("index.jsp");
    return model;
  }
}
