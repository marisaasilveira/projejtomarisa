package controle;


import java.util.List;

import org.hibernate.Session;


import modelo.Servico;

public class DaoServicos {
	
	public void inserirServico(Servico c) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		
		sessao.save( c );
		
		sessao.getTransaction().commit();
		sessao.close();
	}
	
	public List<Servico> listarServico() {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();
		
		List<Servico> lista = sessao.createQuery("FROM Servico").list();
		
		sessao.getTransaction().commit();
		sessao.close();
		return lista;
	}
	
	public  static  Servico  localizarServicoPorCodigo ( int  cod ) {
		Session sessao =  ConexaoBD . getSessionFactory () . openSession ();
		sessao.beginTransaction ();

		Servico obj = ( Servico ) sessao . createQuery ( " FROM Servico WHERE id = "  + cod) . uniqueResult ();
		
		sessao . getTransaction () . commit ();
		sessao . close();

		return obj;
	}
	
	public  static  List < Servico >  filtrarServicoPorNome ( String  str ) {
		Session sessao =  ConexaoBD . getSessionFactory () . openSession ();
		sessao.beginTransaction ();

		List<Servico> lista = sessao.createQuery ( " FROM Servico WHERE nome como '% " + str + " %' " ).list();
		
		sessao.getTransaction().commit ();
		sessao.close();

		return lista;
	}
}
