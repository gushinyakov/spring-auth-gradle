package org.auth.repos;

import org.auth.domain.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface QueryRepo extends CrudRepository<Query, Long> {
    List<Query> findByTag(String tag);

    List<Query> deleteById(int id);
}

