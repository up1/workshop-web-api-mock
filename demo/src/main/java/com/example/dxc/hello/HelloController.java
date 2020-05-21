package com.example.dxc.hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @Autowired
    private GreetingRepository greetingRepository;

    @GetMapping("/hi/{id}")
    public Greeting getById(@PathVariable int id) {
        Greeting result = greetingRepository.findById(1).orElse(new Greeting("Not Found 😕"));
        return result;
    }

}
