package com.uca.spring.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;


import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "ALBUM")
@Setter
@Getter
public class Album implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "ID_ALBUM")
  Integer idAlbum;
  @Column(name = "NOMBRE")
  String nombre;
  @Column(name = "CANCION_POPULAR")
  String cancionPopular;
  @Column(name = "FEC_PUBLICACION")
  String fecPublicacion;
  @ManyToOne(fetch = FetchType.LAZY)
  @JsonIgnore
  @JoinColumns({ @JoinColumn(name = "ID_ARTISTA", referencedColumnName = "ID_ARTISTA") })
  Artista artista;

  public Integer getIdAlbum() {
    return this.idAlbum;
  }

  public String getNombre() {
    return this.nombre;
  }

  public String getCancionPopular() {
    return this.cancionPopular;
  }

  public String getFecPublicacion() {
    return this.fecPublicacion;
  }

  public Integer getIdArtista() {
    return this.artista.idArtista;
  }

  public void setIdAlbum(int newIdAlbum) {
    this.idAlbum = newIdAlbum;
  }

  public void setNombre(String newNombre) {
    this.nombre = newNombre;
  }

  public void setCancionPopular(String newCancionPopular) {
    this.cancionPopular = newCancionPopular;
  }

  public void setFecPublicacion(String newfecPublicacion) {
    this.fecPublicacion = newfecPublicacion;
  }

  public void setArtista(Integer newIdArtista) {
    if (newIdArtista == null) {
      this.artista = null;
    } else {
      this.artista = new Artista();
      this.artista.setIdArtista(newIdArtista);
    }
  }

  public Integer getCatArtistaDelegate() {
    return (this.artista == null) ? null : this.artista.getIdArtista();
  }

  public String getCatArtistaNombreDelegate() {
    return (this.artista == null) ? null : this.artista.getNombre();
  }

  public void setArtistaDelegate(Integer idArtista) {
    if (idArtista == null) {
      this.artista = null;
    } else {
      this.artista = new Artista();
      this.artista.setIdArtista(idArtista);
    }
  }

}