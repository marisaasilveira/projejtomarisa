package controle; 

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ConexaoBD {
	private static SessionFactory sessionFactory;
	static {
		try {
			sessionFactory = new Configuration().configure().buildSessionFactory();
		} catch (Throwable th) {
			System.err.println("Falha na conex�o com o BD: " + th);
			throw new ExceptionInInitializerError(th);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
