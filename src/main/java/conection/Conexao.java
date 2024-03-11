package conection;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;

public class Conexao {
	private	Connection conn;
	
	static String url = "jdbc:h2:~/test";
	static String user = "sa";
	static String password = "";
	
	Statement st = null;
	String instrucaoSQL = "CREATE TABLE Usuario ( "
			+ "id int not null auto_increment, "
			+ "nome varchar(45), "
			+ "senha varchar(15), "
			+ "saldo float, "
			+ "saque float, "
			+ "deposito float, "
			+ "primary key (id))";
	
	public Conexao() {
		try {
			Class.forName("org.h2.Driver");
			conn = DriverManager.getConnection(url, user, password);
			
			System.out.println("Criando a tabela...");
			st = conn.createStatement();
			st.executeUpdate(instrucaoSQL);
			System.out.println("Criando a tabela...");
			
			st.close();		
			}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConn() {
		return conn;
	}
	
	public void fecharConexao() {
		try {
			conn.close();
		}catch (SQLException e) {
			// TODO: handle exception
		}
	}
	
}
