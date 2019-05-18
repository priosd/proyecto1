package dao;

import model.Usuario;

/**
 * @author Rivers
 *
 */
public class PruebaDB {
	public static void main(String[] args) {
			DbConnection conn= new DbConnection();
			UsuarioDAO dao = new UsuarioDAO(conn);
			Usuario usuario = dao.login("juan", "123456");
			System.out.println(usuario);
	}
}
