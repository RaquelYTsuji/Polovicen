package control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import conection.Usuario_DAO;
import model.Usuario;
import javax.servlet.http.Cookie;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		
		Usuario_DAO dao = new Usuario_DAO();
		Usuario usuario = dao.selecionarNomeSenha(nome, senha);
		
		if (usuario.getNome() != null && usuario.getSenha() != null) {	
			Cookie c1 = new Cookie("login", nome);
			c1.setMaxAge(60*5);
			response.addCookie(c1);
			
			Cookie c2 = new Cookie("password", senha);
			c2.setMaxAge(60*5);
			response.addCookie(c2);
			
			response.sendRedirect("polovicen/home/pag2.jsp");
		} else {
			response.sendRedirect("polovicen/login/index.jsp");
		}
	}
}
