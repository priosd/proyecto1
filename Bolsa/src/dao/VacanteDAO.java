package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import model.Vacante;

public class VacanteDAO {
	DbConnection conn;

	public VacanteDAO(DbConnection conn) {
		this.conn = conn;
	}
	public boolean insert (Vacante vacante) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String sql = "insert into Vacante values (?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.getConnection().prepareStatement(sql);
			ps.setInt(1, vacante.getId());
			ps.setString(2,format.format(vacante.getFechaPublicacion()));
			ps.setString(3, vacante.getNombre());
			ps.setString(4, vacante.getDescripcion());
			ps.setString(5, vacante.getDetalle());
			ps.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public List<Vacante> getUltimas(){
		try {
			String sql="select * from vacante order by id desc limit 3";
			PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
			ResultSet rs= preparedStatement.executeQuery();
			List<Vacante> list = new ArrayList<>();
//			List<VacanteDAO> list = new LinkedList<>();
			Vacante vacante;
			while(rs.next()) {
				vacante = new Vacante(rs.getInt("id"));
				vacante.setFechaPublicacion(rs.getDate("fechaPublicacion"));
				vacante.setNombre(rs.getString("nombre"));
				vacante.setDescripcion(rs.getString("descripcion"));
				vacante.setDetalle(rs.getString("detalle"));
				list.add(vacante);
			}
			return list;
		} catch (SQLException e) {
			System.out.println("Error VacanteDao.getUltimas: "+e.getMessage());
			return null;
		}
		
	}
	
	public List<Vacante> getAll(){
		try {
			String sql="select * from vacante order by id desc";
			PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
			ResultSet rs= preparedStatement.executeQuery();
			List<Vacante> list = new ArrayList<>();
//			List<VacanteDAO> list = new LinkedList<>();
			Vacante vacante;
			while(rs.next()) {
				vacante = new Vacante(rs.getInt("id"));
				vacante.setFechaPublicacion(rs.getDate("fechaPublicacion"));
				vacante.setNombre(rs.getString("nombre"));
				vacante.setDescripcion(rs.getString("descripcion"));
				vacante.setDetalle(rs.getString("detalle"));
				list.add(vacante);
			}
			return list;
		} catch (SQLException e) {
			System.out.println("Error VacanteDao.getAll: "+e.getMessage());
			return null;
		}
		
	}
	
	public List<Vacante> getByQuery(String query){
		try {
			String sql="select * from vacante where (descripcion like ? or nombre like ?) order by id desc";
			PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
			//pasamos como parametro en la posicion 1 y 2 la misma cadena
			preparedStatement.setString(1, "%" +query+ "%");
			preparedStatement.setString(2, "%" +query+ "%");
			ResultSet rs= preparedStatement.executeQuery();
			List<Vacante> list = new ArrayList<>();
//			List<VacanteDAO> list = new LinkedList<>();
			Vacante vacante;
			while(rs.next()) {
				vacante = new Vacante(rs.getInt("id"));
				vacante.setFechaPublicacion(rs.getDate("fechaPublicacion"));
				vacante.setNombre(rs.getString("nombre"));
				vacante.setDescripcion(rs.getString("descripcion"));
				vacante.setDetalle(rs.getString("detalle"));
				list.add(vacante);
			}
			return list;
		} catch (SQLException e) {
			System.out.println("Error VacanteDao.getByQuery: "+e.getMessage());
			return null;
		}
		
	}
	
	public Vacante getById (int idVacante) {
		try {
			String sql = "select * from vacante where id=? limit 1";
			PreparedStatement ps = conn.getConnection().prepareStatement(sql);
			ps.setInt(1, idVacante);
			ResultSet rs = ps.executeQuery();
			Vacante vacante = new Vacante(0);
			while(rs.next()) {
				vacante.setId(rs.getInt("id"));
				vacante.setFechaPublicacion(rs.getDate("fechaPublicacion"));
				vacante.setNombre(rs.getString("nombre"));
				vacante.setDescripcion(rs.getString("descripcion"));
				vacante.setDetalle(rs.getString("detalle"));
			}
			return vacante;
			
		} catch (SQLException e) {
			System.out.println("Error vacante.getById "+ e.getMessage());
			return null;
		}
	}

}
