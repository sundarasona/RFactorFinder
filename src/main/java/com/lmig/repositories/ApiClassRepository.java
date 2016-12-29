/*
 * Copyright (C) 2016, Liberty Mutual Group
 *
 * Created on Dec 21, 2016
 */

package com.lmig.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.lmig.model.DepClass;


/**
 * @author n0158567
 *
 */
@RepositoryRestResource
public interface ApiClassRepository extends CrudRepository<DepClass, String>{

	@Query(value = "Select depClass.id as id, depClass.class_name as class_name, depClass.dependent_classes as dependent_classes From r_factor.r_factor_t rfactor JOIN r_factor.technology_t tech ON tech.tech_name = rfactor.tech_api JOIN r_factor.api api ON rfactor.id= api.tech_id JOIN r_factor.dep_class_t depClass on depClass.dependent_classes LIKE CONCAT(CONCAT('%',api.API),'%') WHERE tech.tech_name = ?1", nativeQuery = true)
    public List<DepClass> getClass_name(String tech_name);
}
