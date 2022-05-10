package com.uca.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.uca.spring.util.Util;

@Controller
public class EmployeeController {


   @PostMapping("/saveDetails")
  public String saveDetails(@RequestParam("employeeName") String employeeName,
      @RequestParam("employeeEmail") String employeeEmail,
      @RequestParam("birthday") String birthday, 
      @RequestParam("typeOfDocument") String typeOfDocument,
      ModelMap modelMap) {

    if (Util.isDateValid(birthday)) {
      System.out.println("Valid Birthday");
    }

    modelMap.put("employeeName", employeeName);
    modelMap.put("employeeEmail", employeeEmail);
    return "success.jsp";
  }


}
