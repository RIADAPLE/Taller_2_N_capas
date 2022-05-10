package com.uca.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.spring.model.Artista;

public interface ArtistaRepository extends JpaRepository<Artista, Integer> {

}