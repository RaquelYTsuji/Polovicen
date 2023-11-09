package conection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.*;

public class Usuario_DAO {
	public String inserir (Usuario usuario)
	{
		String retorno = "falha";
		Conexao conn = new Conexao();
		try {
			Statement stmt = (Statement)conn.getConn().createStatement();
			
			stmt.execute("insert into Usuario (nome, senha, saldo, saque, deposito) values ('"+ usuario.getNome()+"', '"+usuario.getSenha()+"', '"+usuario.getSaldo()+"', '"+usuario.getSaque()+"', '"+usuario.getDeposito()+"')");
			retorno = "sucesso";
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			conn.fecharConexao();
		}
		return retorno;
	}
	
	public List<Usuario> listar ()
	{	
		List<Usuario> usuarios = new ArrayList<Usuario>();
		Conexao conn = new Conexao();
		try {
			Statement stmt = (Statement)conn.getConn().createStatement();
			ResultSet rs = stmt.executeQuery("Select * from Usuario");
			while(rs.next()) {
				Usuario usuario = new Usuario(
						rs.getString("nome"),
						rs.getString("senha"),
						rs.getDouble("saldo"),
						rs.getDouble("saque"),
						rs.getDouble("deposito"));
				usuarios.add(usuario);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			conn.fecharConexao();
		}
		return usuarios;
	}

	public Usuario selecionar (int id) {
		Usuario usuario = new Usuario();
		Conexao conn = new Conexao();
		try {
			Statement stmt = (Statement)conn.getConn().createStatement();
			ResultSet rs = stmt.executeQuery("Select * from Usuario where id = '"+id+"'");
			rs.next();
			usuario.setNome(rs.getString("nome"));
			usuario.setSenha(rs.getString("senha"));
			usuario.setSaldo(rs.getDouble("saldo"));
			usuario.setSaque(rs.getDouble("saque"));
			usuario.setDeposito(rs.getDouble("deposito"));
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			conn.fecharConexao();
		}
		return usuario;
	}
	
	public Usuario selecionarNomeSenha (String nome, String senha) {
		Usuario usuario = new Usuario();
		Conexao conn = new Conexao();
		try {
			Statement stmt = (Statement)conn.getConn().createStatement();
			ResultSet rs = stmt.executeQuery("Select * from Usuario where nome = '"+nome+"' and senha = '"+senha+"'");
			rs.next();
			usuario.setNome(rs.getString("nome"));
			usuario.setSenha(rs.getString("senha"));
			usuario.setSaldo(rs.getDouble("saldo"));
			usuario.setSaque(rs.getDouble("saque"));
			usuario.setDeposito(rs.getDouble("deposito"));
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			conn.fecharConexao();
		}
		return usuario;
	}
	
	public String alterar (Usuario usuario) {
		String retorno ="falha";
		Conexao conn = new Conexao();
		try {
			Statement stmt = (Statement)conn.getConn().createStatement();
			String stat="update Usuario set nome ='"+usuario.getNome()+"', password ='"+usuario.getSenha()+"', saldo ='"+usuario.getSaldo()+"', saque ='"+usuario.getSaque()+"', deposito ='"+usuario.getDeposito()+"' where id ='"+usuario.getId()+"'";
			stmt.execute(stat);
			retorno ="sucesso";
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			conn.fecharConexao();
		}
		return retorno;
	}

	public String remover (int id) {
		String retorno ="falha";
		Conexao conn = new Conexao();
		try {
			Statement stmt = (Statement)conn.getConn().createStatement();
			stmt.execute("delete from Usuario where id = '"+id+"'");
			retorno ="sucesso";
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			conn.fecharConexao();
		}
		return retorno;
	}
}
