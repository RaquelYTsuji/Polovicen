package control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import conection.Usuario_DAO;
import model.Usuario;
import javax.servlet.http.Cookie;

@WebServlet("/AlterarUsuario")
public class AlterarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AlterarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
	 	String login = "";
	 	String password = "";
	 	Integer id = 0;
	 	   
	 	for (Cookie cookie : cookies) {
            if (cookie.getName().equals("login")) {
            	login = cookie.getValue();
            }
        }
 	    
 	   for (Cookie cookie : cookies) {
            if (cookie.getName().equals("password")) {
            	password = cookie.getValue();
            }
        }
 	   
 	    Usuario_DAO dao = new Usuario_DAO();
 	    Usuario usuario = dao.selecionarNomeSenha(login, password);
 		
 	    if (usuario.getNome() != null && usuario.getSenha() != null) {
 		    id = usuario.getId();
 	    }
 	    
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		Double saldo = Double.parseDouble(request.getParameter("saldo"));
		Double saque = Double.parseDouble(request.getParameter("saque"));
		Double deposito = Double.parseDouble(request.getParameter("deposito"));
		
		Usuario novoUsuario = new Usuario(nome, senha, saldo, saque, deposito);
		
		String retorno = dao.alterar(id, novoUsuario);
			
		if(retorno.equals("sucesso")) {
			response.sendRedirect("polovicen/home/home.jsp");
		}
		else {
			response.sendRedirect("polovicen/conta/alterar.jsp");
		}
	}
}
