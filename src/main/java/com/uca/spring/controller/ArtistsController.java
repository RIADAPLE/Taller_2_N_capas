package com.uca.spring.controller;

import com.uca.spring.model.Artista;
import com.uca.spring.repository.ArtistaRepository;

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
public class ArtistsController {

  @Autowired
  ArtistaRepository artistaRepository;

  @RequestMapping("/artists")
  public ModelAndView viewArtists() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("artista/index.jsp");
    return mv;
  }

  @RequestMapping("/add-artist")
  public ModelAndView addArtist() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("artista/addArtist.jsp");
    return mv;
  }

  @RequestMapping(value = "/saveArtist", method = RequestMethod.POST)
  public @ResponseBody String saveAgdReferido(@ModelAttribute("Artist") @Validated Artista artist) {
    artistaRepository.save(artist);
    return null;
  }
}
