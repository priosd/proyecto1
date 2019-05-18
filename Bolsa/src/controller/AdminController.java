package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DbConnection;
import dao.UsuarioDAO;
import dao.VacanteDAO;
import model.Usuario;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AdminController() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action = request.getParameter("action");
    	HttpSession session = request.getSession();
    	RequestDispatcher rd;
    	String msg="";
    	
    	switch(action) {
    	case "login":
    		if(session.getAttribute("usuario")==null) {
    			request.setAttribute("message", msg);
    			rd=request.getRequestDispatcher("/login.jsp");
    			rd.forward(request, response);
    		}else {
    			rd=request.getRequestDispatcher("/admin.jsp");
    			rd.forward(request, response);
    		}
    		break;
    	case "logout":
    		session.invalidate();
    		response.sendRedirect(request.getContextPath()+"/homePage");
    		break;
    		
    	case "crear":
    		if(session.getAttribute("usuario") == null) {
    			msg= "Acceso Denegado";
    			request.setAttribute("message", msg);
    			rd=request.getRequestDispatcher("/login.jsp");
    			rd.forward(request, response);
    		}else {
    			rd=request.getRequestDispatcher("/frmvacante.jsp");
    			rd.forward(request, response);
    		}
    		break;
    	case "eliminar":
    		if (session.getAttribute("usuario")==null) {
    			msg="Acceso Denegado";
    			request.setAttribute("message", msg);
    			rd=request.getRequestDispatcher("/login.jsp");
    			rd.forward(request, response);
    		}else {
    			this.eliminarVacante(request, response);
    		}
    		break;
    	}
    }
    
    
    	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userParam=request.getParameter("user");
	String passParam = request.getParameter("pass");
	String msg="";
	HttpSession session = request.getSession();
	DbConnection conn = new DbConnection();
	UsuarioDAO usuarioDao = new UsuarioDAO(conn);
	
	Usuario usuario = usuarioDao.login(userParam, passParam);
	conn.disconnect();
	
	RequestDispatcher rd;
	if(usuario.getId()>0) {
		session.setAttribute("usuario", usuario);
		rd=request.getRequestDispatcher("/admin.jsp");
		rd.forward(request, response);
	}
	else {
		msg="Usuario y/o contraseña invalido";
		request.setAttribute("message", msg);
		rd=request.getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
	}
	}
	protected void eliminarVacante(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int idVacanteParam = Integer.parseInt(request.getParameter("idVacante"));
    	DbConnection conn= new DbConnection();
    	VacanteDAO vacanteDao = new VacanteDAO(conn);
    	int respuesta = vacanteDao.delete(idVacanteParam);
    	String msg="";
    	if(respuesta == 1) {
    		msg="La vacante fue eliminada correctamente";
    	}else {
    			msg="Ocurrio un error. La vacante no fue eliminada";
    		}
    		conn.disconnect();
    		request.setAttribute("message", msg);
    		RequestDispatcher rd;
    		rd = request.getRequestDispatcher("/mensaje.jsp");
    		rd.forward(request, response);
    	}

    	
    			
	}


