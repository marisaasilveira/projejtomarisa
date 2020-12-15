package controle;

import java.util.List;

import org.hibernate.Session;

import modelo.Cliente;

public class DaoCliente {

	public void inserirCliente(Cliente c) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		sessao.save(c);

		sessao.getTransaction().commit();
		sessao.close();
	}

	public List<Cliente> listarCliente() {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		List<Cliente> lista = sessao.createQuery("FROM Cliente").list();

		sessao.getTransaction().commit();
		sessao.close();
		return lista;
	}

	public static Cliente localizarClientePorCodigo(int cod) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		Cliente obj = (Cliente) sessao.createQuery(" FROM Cliente WHERE id = " + cod).uniqueResult();

		sessao.getTransaction().commit();
		sessao.close();

		return obj;
	}

	public static List<Cliente> filtrarClientePorNome(String str) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		List<Cliente> lista = sessao.createQuery(" FROM Cliente WHERE nome como '% " + str + " %' ").list();

		sessao.getTransaction().commit();
		sessao.close();

		return lista;
	}

	public static void editarCliente(Cliente cli) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		sessao.update(cli);

		sessao.getTransaction().commit();
		sessao.close();
	}

	public static void removerCliente(Cliente c) {
		Session sessao = ConexaoBD.getSessionFactory().openSession();
		sessao.beginTransaction();

		sessao.delete(c);

		sessao.getTransaction().commit();
		sessao.close();
	}
}
