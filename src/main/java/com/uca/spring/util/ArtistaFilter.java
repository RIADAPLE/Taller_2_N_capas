package com.uca.spring.util;

public class ArtistaFilter {

  private String value;

  private String name;

  private String genero;

  private String pais;

  private String discografia;

  public ArtistaFilter(String value, String name) {
    this.value = value;
    this.name = name;
  }

  public ArtistaFilter(String value, String name, String genero, String pais, String discografia) {
    this.value = value;
    this.name = name;
    this.genero = genero;
    this.pais = pais;
    this.discografia = discografia;
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

  public void setPais(String pais) {
    this.pais = pais;
  }

  public String getPais() {
    return pais;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getGenero() {
    return genero;
  }

  public void setGenero(String genero) {
    this.genero = genero;
  }

  public String getDiscografia() {
    return discografia;
  }

  public void setDiscografia(String discografia) {
    this.discografia = discografia;
  }

}
