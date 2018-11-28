package org.auth.controller;


import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.auth.domain.Query;
import org.auth.repos.QueryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

@RestController
public class QueryController {

    @Autowired
    private QueryRepo queryRepo;


    @PostMapping("/profile/showQuery")
    public String showQuery(Map<String, String> model) {
        return returnJsonQueries(model);
    }

    @PostMapping("/profile/addQuery")
    public String add(@RequestParam String query, Map<String, String> model) {

        Query newQuery = new Query(query, "red");
        queryRepo.save(newQuery);

        return returnJsonQueries(model);
    }

    @Transactional
    @PostMapping("/profile/deleteById")
    public String delete(@RequestParam String jsonListId,
                         Map<String, String> model) {

        Type arrayType = new TypeToken<ArrayList<String>>() {}.getType();
        ArrayList<String> listOfId = new Gson().fromJson(jsonListId, arrayType);

        listOfId.forEach(id -> queryRepo.deleteById(Integer.parseInt(id)));

        return returnJsonQueries(model);
    }

    private String returnJsonQueries(Map<String, String> model) {
        Iterable<Query> queries = queryRepo.findAll();
        model.put("queries", new Gson().toJson(queries));

        return new Gson().toJson(model);
    }
}
