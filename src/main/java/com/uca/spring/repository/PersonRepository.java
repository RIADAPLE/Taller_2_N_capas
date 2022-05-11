package com.uca.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.uca.spring.model.Person;


public interface PersonRepository extends JpaRepository<Person, Integer> {

}
