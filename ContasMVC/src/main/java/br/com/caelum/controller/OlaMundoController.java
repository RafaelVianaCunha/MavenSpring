package br.com.caelum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OlaMundoController {
	@RequestMapping("/ola")
	public String execute(){
		System.out.println("Olá Mundo Spring MVC");
		System.out.println("teste");
		return "ola";
	}
}
