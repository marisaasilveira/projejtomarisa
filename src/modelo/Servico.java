package modelo;

import javax.persistence.*;

@Entity
public class Servico {
	
	@Id
	@GeneratedValue
	private int id;
	
	private String nome;
	private double valor;
	private String descricao;
	
	public Servico() {
		super();
	}

	public Servico(String nome, double valor, String descricao) {
		super();
		this.nome = nome;
		this.valor = valor;
		this.descricao = descricao;
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

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
