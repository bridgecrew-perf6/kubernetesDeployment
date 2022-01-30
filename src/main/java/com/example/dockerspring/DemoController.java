package com.example.dockerspring;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

  @GetMapping("/healthcheck")
  public String healthCheck(){
    return "All is well!! Enjoy life when you still have it.1";
  }
}
