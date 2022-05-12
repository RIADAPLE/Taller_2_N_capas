package com.uca.spring.controller;

import com.uca.spring.model.Artista;
import com.uca.spring.model.Album;
import com.uca.spring.util.AlbumFull;
import com.uca.spring.repository.AlbumRepository;
import com.uca.spring.repository.ArtistaRepository;
import com.uca.spring.util.AlbumFilter;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class AlbumsController {

  @Autowired
  AlbumRepository albumRepository;

  @Autowired
  ArtistaRepository artistaRepository;

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

  @RequestMapping(value = "/delete-album", method = RequestMethod.GET)
  public ModelAndView deleteAlbum() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("album/deleteAlbum.jsp");

    return mv;
  }

  @RequestMapping(value = "/update-album", method = RequestMethod.GET)
  public ModelAndView updateAlbum() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("album/updateAlbum.jsp");

    return mv;
  }

  @RequestMapping(value = "/saveAlbum", method = RequestMethod.POST)
  public @ResponseBody String saveAgdReferido(@ModelAttribute("Album") @Validated Album album) {
    albumRepository.save(album);
    return null;
  }

  @DeleteMapping("/deleteAlbum/{id}")
  public @ResponseBody Object deleteAlbum(@PathVariable(value = "id") Integer albumId) {
    albumRepository.deleteById(albumId);
    return null;
  }

  @RequestMapping(value = { "/albumFilter" }, method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
  public @ResponseBody List<AlbumFilter> albumFilter() {
    List<Album> albums = albumRepository.findAll();
    List<AlbumFilter> response = new ArrayList<>();
    for (int i = 0; i < albums.size(); i++) {
      response.add(new AlbumFilter(Integer.toString(albums.get(i).getIdAlbum()), albums.get(i).getNombre()));
    }
    return response;
  }

  @RequestMapping(value = { "/showAlbums" }, method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
  public @ResponseBody List<AlbumFull> showAlbums() {
    List<Album> albums = albumRepository.findAll();
    List<AlbumFull> response = new ArrayList<>();
    for (int i = 0; i < albums.size(); i++) {
      Integer newId = albums.get(i).getCatArtistaDelegate();
      Artista newArtist = artistaRepository.findById(newId).orElse(null);
      String newArtistName = newArtist.getNombre();
      response.add(new AlbumFull(Integer.toString(albums.get(i).getIdAlbum()), albums.get(i).getNombre(),
          albums.get(i).getCancionPopular(), albums.get(i).getFecPublicacion(), newArtistName));
    }

    return response;
  }
}