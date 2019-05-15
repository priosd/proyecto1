package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DbConnection;
import dao.VacanteDAO;
import model.Vacante;

/**
 * Servlet implementation class BusquedaController
 */
@WebServlet("/buscar")
public class BusquedaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public BusquedaController() {
        super();
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//recibiendo en la variable q el parametro query
			String q = request.getParameter("query");
			List<Vacante> lista= null;
			DbConnection conn = new DbConnection();
			VacanteDAO vacanteDao = new VacanteDAO(conn);
			lista= vacanteDao.getByQuery(q);
			System.out.println(lista);
			conn.disconnect();
			RequestDispatcher rd;
			request.setAttribute("vacantes", lista);
			rd=request.getRequestDispatcher("/vacantes.jsp");
			rd.forward(request, response);
	}

}
