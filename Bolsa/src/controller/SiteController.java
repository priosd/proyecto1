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
 * Servlet implementation class SiteController
 */
@WebServlet("/homePage")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SiteController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd;
		DbConnection conn= new DbConnection();
		VacanteDAO vacanteDAO= new VacanteDAO(conn);
		List<Vacante> lista= vacanteDAO.getUltimas();
		conn.disconnect();
		request.setAttribute("ultimas", lista);
		rd=request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
