package com.uca.spring.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "ARTISTA")
@Setter
@Getter
public class Artista implements Serializable {
  private static final long serialVersionUID = 1L;
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "ID_ARTISTA")
  Integer idArtista;
  @Column(name = "NOMBRE")
  String nombre;
  @Column(name = "GENERO")
  String genero;
  @Column(name = "PAIS")
  String pais;
  @Column(name = "DISCOGRAFIA")
  String discografia;

  public Artista() {
    this.nombre = "No encontrado";
  }

  public Integer getIdArtista() {
    return this.idArtista;
  }

  public String getNombre() {
    return this.nombre;
  }

  public String getGenero() {
    return this.genero;
  }

  public String getPais() {
    return this.pais;
  }

  public String getDiscografia() {
    return this.discografia;
  }

  public void setIdArtista(int newIdArtista) {
    this.idArtista = newIdArtista;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public void setGenero(String newGenero) {
    this.genero = newGenero;
  }

  public void setPais(String pais) {
    this.pais = pais;
  }

  public void setDiscografia(String discografia) {
    this.discografia = discografia;
  }
}