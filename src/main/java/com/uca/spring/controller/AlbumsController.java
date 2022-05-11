package com.uca.spring.controller;

import com.uca.spring.model.Album;
import com.uca.spring.repository.AlbumRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class AlbumsController {

  @Autowired
  AlbumRepository albumRepository;

  @RequestMapping(value = "/albums", method = RequestMethod.GET)
  public ModelAndView viewArtists() {	
    ModelAndView mv = new ModelAndView();
    mv.setViewName("album/index.jsp");
    return mv;
  }

  
  @RequestMapping("/add-album")
  public ModelAndView album() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("album/addAlbum.jsp");
    return mv;
  }

  @RequestMapping(value = "/saveAlbum", method = RequestMethod.POST)
  public @ResponseBody String saveAgdReferido(@ModelAttribute("Album") @Validated Album album) {
    albumRepository.save(album);
    return null;
  }
}