package controle;


import java.util.List;

import org.hibernate.Session;


import modelo.Projeto;

public class DaoProjeto {
	
	public void inserirProjeto(Projeto c) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		
		sessao.save( c );
		
		sessao.getTransaction().commit();
		sessao.close();
	}
	
	public List<Projeto> listarProjeto() {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		
		List<Projeto> lista = sessao.createQuery("FROM Projeto").list();
		
		sessao.getTransaction().commit();
		sessao.close();
		return lista;
	}
	
	public  static  Projeto  localizarProjetoPorCodigo ( int  cod ) {
		Session sessao =  ConexaoBD . getSessionFactory () . openSession ();
		sessao.beginTransaction ();

		Projeto obj = ( Projeto ) sessao . createQuery ( " FROM Projeto WHERE id = "  + cod) . uniqueResult ();
		
		sessao . getTransaction () . commit ();
		sessao . close();

		return obj;
	}
	
	public  static  List < Projeto >  filtrarProjetoPorNome ( String  str ) {
		Session sessao =  ConexaoBD . getSessionFactory () . openSession ();
		sessao.beginTransaction ();

		List<Projeto> lista = sessao.createQuery ( " FROM Projeto WHERE nome como '% " + str + " %' " ).list();
		
		sessao.getTransaction().commit ();
		sessao.close();

		return lista;
	}
}
