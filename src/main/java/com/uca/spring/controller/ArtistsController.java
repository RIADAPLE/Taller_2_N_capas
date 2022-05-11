package com.uca.spring.controller;

import com.uca.spring.model.Artista;
import com.uca.spring.model.Municipio;
import com.uca.spring.repository.ArtistaRepository;
import com.uca.spring.util.ArtistaFilter;
import com.uca.spring.util.CboFilter;

import java.util.ArrayList;
import java.util.List;

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
  
  @RequestMapping(value = {"/artistaFilter"}, method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
  public @ResponseBody
  List<ArtistaFilter> artistaFilter() {
    List<Artista> artistas = artistaRepository.findAll();
      List<ArtistaFilter> response = new ArrayList<>();
      for (int i = 0; i < artistas.size(); i++) {
          response.add(new ArtistaFilter(Integer.toString(artistas.get(i).getIdArtista()), artistas.get(i).getNombre()));
      }
      return response;
  }
}
