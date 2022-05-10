package com.uca.spring.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ALBUM")

public class Album implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "ID_ALBUM")
	Integer idAlbum;
	@Column(name = "NOMBRE")
	String nombre;
	@Column(name = "VENTAS_ALBUM")
	Integer ventasAlbum;
	@Column(name = "FEC_PUBLICACION")
	String FecPublicacion;
	@Column(name = "ID_ARTISTA")
	Integer idArtista;
	
	public int getIdAlbum() {
		  return this.idAlbum;
	  }
	  
	  public String getNombre() {
		  return this.nombre;
	  }
	  
	  public int getVentasAlbum() {
		  return this.ventasAlbum;
	  }
	  
	  public String getVenta() {
		  return this.FecPublicacion;
	  }
	  
	  public int getIdArtista() {
		  return this.idArtista;
	  }
	  
	  public void setIdAlbum(int newIdAlbum) {
		  idAlbum = newIdAlbum;
	  }
	  
	  public void setIdArtista(int newIdArtista) {
		  idArtista = newIdArtista;
	  }
	
}