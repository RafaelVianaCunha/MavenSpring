package br.com.caelum.contas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	
	public Connection getConnection() throws SQLException {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());			 
			return  DriverManager.getConnection("jdbc:mysql://localhost/contas", "root", "root");
			//return  DriverManager.getConnection("jdbc:mysql://127.12.175.130:3306/test", "adminx9rk9Vf", "8cC7LkPh--FX");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
