package usuario;

public class Usuario {
	private String nome;
	private String password;
	private Double saldo;
	private Double saque;
	private Double deposito;
	
	public Usuario(String nome, String password, Double saldo, Double saque, Double deposito) {
		this.nome = nome;
		this.password = password;
		this.saldo = saldo;
		this.saque = saque;
		this.deposito = deposito;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Double getSaldo() {
		return saldo;
	}
	public void setSaldo(Double saldo) {
		this.saldo = saldo;
	}
	
	public Double getSaque() {
		return saque;
	}
	public void setSaque(Double saque) {
		this.saque = saque;
	}
	
	public Double getDeposito() {
		return deposito;
	}
	public void setDeposito(Double deposito) {
		this.deposito = deposito;
	}
	
}
