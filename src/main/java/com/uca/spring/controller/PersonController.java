package com.uca.spring.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.uca.spring.model.Departamento;
import com.uca.spring.model.Municipio;
import com.uca.spring.model.Person;
import com.uca.spring.repository.DepartamentoRepository;
import com.uca.spring.repository.PersonRepository;
import com.uca.spring.util.CboFilter;


@Controller
@RequestMapping("/")
public class PersonController {

  
  @Autowired
  PersonRepository personRepository;
  
  /**
   * /** Index jsp Controller
   *
   * @return ModelAndView
   * @author Wsalazar
   * @version 1.0
   */
  @RequestMapping("/indexPerson")
  public ModelAndView indexPerson() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("person/index.jsp");
    return mv;
  }

  

  /**
   * Controlador para guardar por medio de Ajax
   *
   * @return String pero se le coloca null para indicar que no hubo ningun
   * error
   * @Param Modelo que vendra lleno para guardarlo directamente en la base de
   * datos
   * @author Generador-Safi
   * @version 1.0
   */
  @RequestMapping(value = "/savePerson", method = RequestMethod.POST)
  public @ResponseBody
  String saveAgdReferido(@ModelAttribute("Person") @Validated Person person) {
      personRepository.save(person);
      return null;
  }
  
  

  
}
