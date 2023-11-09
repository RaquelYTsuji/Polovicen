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
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		Double saldo = Double.parseDouble(request.getParameter("saldo"));
		Double saque = Double.parseDouble(request.getParameter("saque"));
		Double deposito = Double.parseDouble(request.getParameter("deposito"));
		
		Usuario usuario = new Usuario(nome, senha, saldo, saque, deposito);
		
		Usuario_DAO dao = new Usuario_DAO();
		
		String retorno = dao.alterar(usuario);
			
		if(retorno.equals("sucesso")) {
			response.sendRedirect("polovicen/home/pag2.jsp");
		}
		else {
			response.sendRedirect("polovicen/conta/alterar.jsp");
		}
	}
}
