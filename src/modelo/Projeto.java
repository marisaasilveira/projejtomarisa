package modelo;

import javax.persistence.*;

@Entity
public class Projeto {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String nome;

	@ManyToOne
	Funcionario funcionario;
	
	@ManyToOne
	Servico servico;
	
	@ManyToOne
	
	Cliente cliente;
	
	public Projeto() {
		super();
	}


	public Projeto(String nome, Funcionario funcionario, Servico servico, Cliente cliente) {
		super();
		this.nome = nome;
		this.funcionario = funcionario;
		this.servico = servico;
		this.cliente = cliente;
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


	public Funcionario getFuncionario() {
		return funcionario;
	}


	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}


	public Servico getServico() {
		return servico;
	}


	public void setServico(Servico servico) {
		this.servico = servico;
	}


	public Cliente getCliente() {
		return cliente;
	}


	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

}
