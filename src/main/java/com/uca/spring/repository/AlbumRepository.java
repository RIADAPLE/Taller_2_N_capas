package com.uca.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.uca.spring.model.Album;

public interface AlbumRepository extends JpaRepository<Album, Integer> {

}