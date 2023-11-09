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

@WebServlet("/InserirUsuario")
public class InserirUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		String confirmar = request.getParameter("confirmar");
		
		if(senha.equals(confirmar)) {
			Usuario usuario = new Usuario(nome, senha, 0.0, 0.0, 0.0);
			
			Usuario_DAO dao = new Usuario_DAO();
			String retorno = dao.inserir(usuario);
				
			if(retorno.equals("sucesso")) {
				response.sendRedirect("polovicen/login/index.jsp");
				System.out.println("Usuario criado");
			} else {
				response.sendRedirect("polovicen/cadastro/cadastro.jsp");
			}
		} else {
			response.sendRedirect("polovicen/cadastro/cadastro.jsp");
		}
	}
}
