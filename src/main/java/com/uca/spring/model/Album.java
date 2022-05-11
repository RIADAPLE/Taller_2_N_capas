package com.uca.spring.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "ALBUM")
@Setter
@Getter
public class Album implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @Column(name = "ID_ALBUM")
  Integer idAlbum;
  @Column(name = "NOMBRE")
  String nombre;
  @Column(name = "CANCION_POPULAR")
  String cancionPopular;
  @Column(name = "FEC_PUBLICACION")
  String fecPublicacion;
  @Column(name = "ID_ARTISTA")
  Integer idArtista;

  public int getIdAlbum() {
    return this.idAlbum;
  }

  public String getNombre() {
    return this.nombre;
  }

  public String getCancionPopular() {
    return this.cancionPopular;
  }

  public String getVenta() {
    return this.fecPublicacion;
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