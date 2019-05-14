package controller;

import java.io.IOException;

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
 * Servlet implementation class VacanteController
 */
@WebServlet("/vacante")
public class VacanteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public VacanteController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	//primero recibimos el parametro action
    	String action = request.getParameter("action");	
    	if(action.equals("ver")) {
    		//realizamos un metodo y le pasamos como parametro
    		//el mismo objeto request y response que llego con la solicitud
    		this.verDetalle(request,response);
    	}
    }
    protected void verDetalle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int idVacante = Integer.parseInt(request.getParameter("id"));
    	DbConnection conn= new DbConnection();
    	VacanteDAO vacanteDao= new VacanteDAO(conn);
    	Vacante vacante = vacanteDao.getById(idVacante);
    	conn.disconnect();
    	request.setAttribute("vacante", vacante);
    	RequestDispatcher rd;
    	rd=request.getRequestDispatcher("/detalle.jsp");
    	rd.forward(request, response);	
    }

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// recibir parametros
		//"nombre es el parametro q recibe de <input name="nombre" del jsp frmvacante"
		String nombreParam = request.getParameter("nombre");
		String descripcionParam = request.getParameter("descripcion");
		String detalleParam = request.getParameter("detalles");
		
		Vacante vacante = new Vacante(0);
		vacante.setNombre(nombreParam);
		vacante.setDescripcion(descripcionParam);
		vacante.setDetalle(detalleParam);
		
		System.out.println(vacante);
		
		DbConnection conn = new DbConnection();
		VacanteDAO vacanteDAO = new VacanteDAO(conn);
		Boolean estatus = vacanteDAO.insert(vacante);
		
		String msg="";
		if(estatus) {
			msg ="la vacante fue guardada correctamente";
			
		}else {
			msg="ocurrio un error. La vacante no fue guardada.";
		}
		conn.disconnect();
		//creando un objeto de tipo RequestDispatcher el cual nos permite
		// hacer un reenvio de la solicitud
		RequestDispatcher rd;
		//creanbdo un atributo llamado message y le asignamos el mensaje o la variable de tipo String 
		//que le vamos a enviar al usuario como respuesta
		request.setAttribute("message", msg);
		//enviamos la respuesta y renderizamos la vista mensaje .jsp
		rd=request.getRequestDispatcher("/mensaje.jsp");
		//el envio lo hacemos utilizando el metodo forward
		//y le estamos enviando la solicitud y la respuesta
		//con la diferencia que dentro de la solicitud va integrado este atributo "message"
		//el cual va a estar disponible en la vista mensaje.jsp
		rd.forward(request, response);
	}

}
