/*
 * Copyright (C) 2016, Liberty Mutual Group
 *
 * Created on Dec 21, 2016
 */

package com.lmig.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.lmig.model.DepJar;


/**
 * @author n0158567
 *
 */
@RepositoryRestResource
public interface DepJarRepository extends CrudRepository<DepJar, String>{

}
