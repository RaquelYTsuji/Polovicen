package model;

public class Usuario {
	private Integer id;
	private String nome;
	private String senha;
	private Double saldo;
	private Double saque;
	private Double deposito;
	
	public Usuario() {

	}
	
	public Usuario(String nome, String senha, Double saldo, Double saque, Double deposito) {
		this.nome = nome;
		this.senha = senha;
		this.saldo = saldo;
		this.saque = saque;
		this.deposito = deposito;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
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
