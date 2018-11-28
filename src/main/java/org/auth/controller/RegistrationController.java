package org.auth.controller;

import com.google.gson.Gson;
import org.auth.domain.Role;
import org.auth.domain.User;
import org.auth.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.Map;

@RestController
public class RegistrationController {

    @Autowired
    private UserRepo userRepo;

    @PostMapping("/registration")
    public String createUser(
            @RequestParam(value = "username") String username,
            @RequestParam(value = "email") String email,
            @RequestParam(value = "password") String password,
            Map<String, Object> model) {

        User user = new User(username, email, password);
        User userFromDb = userRepo.findByUsername(user.getUsername());

        if (userFromDb != null) {
            model.put("status", "warning");
            model.put("message", "User <b>" + user.getUsername() + "</b> exists! <a href='#'>You can restore password</a>");
            model.put("icon", "icon-warning-sign");
            return new Gson().toJson(model);
        }

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);

        model.put("status", "success");
        model.put("message", "User <b>" + user.getUsername() + "</b> has been created! ");
        model.put("icon", "icon-thumbs-up");
        model.put("user", user);




















        return new Gson().toJson(model);
    }
}
