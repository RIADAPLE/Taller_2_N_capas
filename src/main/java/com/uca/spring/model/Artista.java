package com.uca.spring.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ARTISTA")

public class Artista implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "ID_ARTISTA")
	Integer idArtista;
	@Column(name = "NOMBRE")
	String nombre;
	@Column(name = "GENERO")
	String genero;
	@Column(name = "VENTAS")
	Integer ventas;
	@Column(name = "DISCOGRAFIA")
	String discografia;
	
	public int getIdArtista() {
		  return this.idArtista;
	  }
	  
	  public String getNombre() {
		  return this.nombre;
	  }
	  
	  public String getGenero() {
		  return this.genero;
	  }
	  
	  public int getVenta() {
		  return this.ventas;
	  }
	  
	  public String getDiscografia() {
		  return this.discografia;
	  }
	  
	  public void setIdArtista(int newIdArtista) {
		  idArtista = newIdArtista;
	  }
	
}