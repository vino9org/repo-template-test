package net.vino9.app.SimpleApp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class HelloWorldController {

    @GetMapping("/hello")
    public Map<String, String> sayHello() {
        return Map.of("message", "Hello, World!");
    }
}
