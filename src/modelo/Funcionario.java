package modelo;

import javax.persistence.*;

@Entity
public class Funcionario {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String nome;
	private int cpf;
	private int telefone;
	
	@ManyToOne
	Usuario usuario;
	
	public Funcionario() {
		super();
	}

	public Funcionario(String nome, int cpf, int telefone, Usuario usuario) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.telefone = telefone;
		this.usuario = usuario;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getCpf() {
		return cpf;
	}

	public void setCpf(int cpf) {
		this.cpf = cpf;
	}

	public int getTelefone() {
		return telefone;
	}

	public void setTelefone(int telefone) {
		this.telefone = telefone;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}


}
