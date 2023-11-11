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

@WebServlet("/RemoverUsuario")
public class RemoverUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public RemoverUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void Usuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		
		Usuario_DAO dao = new Usuario_DAO();
		String retorno = dao.remover(id);
		if(retorno.equals("sucesso")) {
			response.sendRedirect("polovicen/home/home.jsp");
		}
		else {
			response.sendRedirect("polovicen/conta/remover.jsp");
		}
	}
}
