package com.uca.spring.util;

public class AlbumFilter {

  private String value;

  private String name;

  public AlbumFilter(String value, String name) {
    this.value = value;
    this.name = name;
  }
 
  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }

  public String getName() {
    return name;
  }  

}
