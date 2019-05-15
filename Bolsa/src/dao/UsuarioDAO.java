package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Usuario;

public class UsuarioDAO {
	DbConnection conn;

	public UsuarioDAO(DbConnection conn) {
		this.conn = conn;
	}
	
	public Usuario login(String user, String pass) {
		try {
			String sql="select * from usuario where username=? and password = md5(?) and estatus='activo' limit 1";
			PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
			preparedStatement.setString(1, user);
			preparedStatement.setString(2, pass);
			ResultSet rs = preparedStatement.executeQuery();
			Usuario usuario = new Usuario(0);
			while(rs.next()) {
				usuario.setId(rs.getInt("id"));
				usuario.setNombre(rs.getString("nombre"));
				usuario.setEmail(rs.getString("email"));
				usuario.setUsername(rs.getString("username"));
				usuario.setPassword(rs.getString("password"));
				usuario.setPerfil(rs.getString("perfil"));
				usuario.setEstatus(rs.getString("estatus"));
			}
			return usuario;
		}catch(SQLException e) {
			System.out.println("Error UsuarioDao.login"+e.getMessage());
		return null;
		}
	}
}
