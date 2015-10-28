package br.com.caelum.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.contas.dao.UsuarioDAO;
import br.com.caelum.contas.modelo.Usuario;

@Controller
public class UsuarioController {
	
	@RequestMapping("/loginForm")
	public String formulario(){
		return "usuario/login";
	}
	
	@RequestMapping("/efetuarLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {		
		System.out.println(usuario.getLogin()+" : " + usuario.getSenha());		
		UsuarioDAO dao = new UsuarioDAO();		
		if(dao.existeUsuario(usuario)){
			session.setAttribute("usuarioLogado", usuario);
			return "redirect:listaContas";
		}		
		return "redirect:loginForm";
		
	}

}
