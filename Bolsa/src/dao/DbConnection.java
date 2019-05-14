package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	static String bd = "bd_tinajero_vacantes";
	static String login = "root";
	static String password = "1234";
	static String url = "jdbc:mysql://localhost/" + bd;
	Connection conn = null;

	public DbConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, login, password);
			if (conn != null) {
				System.out.println("Coneccion a la base de datos [" + conn + " ] OK");

			}
		} catch (SQLException e) {
			System.out.println("Excepcion conexion: " + e.getMessage());
		} catch (ClassNotFoundException e) {
			System.out.println("Excepcion driver: " + e.getMessage());
		}
	}

	public Connection getConnection() {
		return conn;
	}

	public void disconnect() {
		System.out.println("cerrando la base de datos [" + conn + "] OK");
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println(e);
			}
		}
	}
}
