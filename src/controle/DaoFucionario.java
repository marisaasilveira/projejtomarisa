package controle;


import java.util.List;

import org.hibernate.Session;


import modelo.Funcionario;

public class DaoFucionario {
	
	public void inserirFuncionario(Funcionario c) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		
		sessao.save( c );
		
		sessao.getTransaction().commit();
		sessao.close();
	}
	
	public List<Funcionario> listarFuncionario() {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		
		List<Funcionario> lista = sessao.createQuery("FROM Funcionario").list();
		
		sessao.getTransaction().commit();
		sessao.close();
		return lista;
	}
	
	public  static  Funcionario  localizarFuncionarioPorCodigo ( int  cod ) {
		Session sessao =  ConexaoBD . getSessionFactory () . openSession ();
		sessao.beginTransaction ();

		Funcionario obj = ( Funcionario ) sessao . createQuery ( " FROM Funcionario WHERE id = "  + cod) . uniqueResult ();
		
		sessao . getTransaction () . commit ();
		sessao . close();

		return obj;
	}
	
	public  static  List < Funcionario >  filtrarFuncionarioPorNome ( String  str ) {
		Session sessao =  ConexaoBD . getSessionFactory () . openSession ();
		sessao.beginTransaction ();

		List<Funcionario> lista = sessao.createQuery ( " FROM Funcionario WHERE nome como '% " + str + " %' " ).list();
		
		sessao.getTransaction().commit ();
		sessao.close();

		return lista;
	}
}
