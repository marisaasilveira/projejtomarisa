package controle;

import java.util.List;

import org.hibernate.Session;

import modelo.Usuario;

public class DaoUsuario {

	public void inserirUsuario(Usuario c) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		sessao.save(c);

		sessao.getTransaction().commit();
		sessao.close();
	}

	public List<Usuario> listarUsuario() {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		List<Usuario> lista = sessao.createQuery("FROM Usuario").list();

		sessao.getTransaction().commit();
		sessao.close();
		return lista;
	}

	public static Usuario localizarUsuarioPorCodigo(int cod) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		Usuario obj = (Usuario) sessao.createQuery(" FROM Usuario WHERE id = " + cod).uniqueResult();

		sessao.getTransaction().commit();
		sessao.close();

		return obj;
	}
	
	public static Usuario localizarUsuarioPorLogin(String username){
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		Usuario obj = (Usuario) sessao.createQuery("FROM Usuario WHERE login = '" + username +"'").uniqueResult();
		
		sessao.getTransaction().commit();
		sessao.close();

		return obj;
	}

	public static List<Usuario> localizarUsuarioPorNome(String str) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		List<Usuario> lista = sessao.createQuery(" FROM Usuario WHERE nome como '% " + str + " %' ").list();

		sessao.getTransaction().commit();
		sessao.close();

		return lista;
	}
}
