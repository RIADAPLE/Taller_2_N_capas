package com.uca.spring.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "MUNICIPIO")
@Setter
@Getter
public class Municipio implements Serializable{
  private static final long serialVersionUID = 1L;
  @Id
  @Column(name = "ID_MUNICIPIO")
  Integer idMunicipio;
  
  @Column(name = "ID_DEPARTAMENTO")
  Integer idDepartamento;
  
  @Column(name = "DESCRIPCION")
  String descripcion;

  
  public int getIdDepartamento() {
	  return this.idDepartamento;
  }
  
  public int getIdMunicipio() {
	  return this.idMunicipio;
  }
  
  public String getDescripcion() {
	  return this.descripcion;
  }
  
  public void setIdMunicipio(int newIdMunicipio) {
	  idMunicipio = newIdMunicipio;
  }
  
}
