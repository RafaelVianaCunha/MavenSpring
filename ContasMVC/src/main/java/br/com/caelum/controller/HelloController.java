package br.com.caelum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	@RequestMapping("/hello")
	public String index() {
		System.out.println("Ol� Mundo Spring MVC");
		System.out.println("teste");
		return "hello";

	}

}
