package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
 import modelo.Supleente;


/**
 *
 * @author marcelosiedler
 */
public class SupleenteDAO {
    EntityManager em;
    
    public SupleenteDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em =  emf.createEntityManager();
    }
    
    public void incluir(Supleente obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            //em.close();
            
        }
        
    }
    public List<Supleente> listar() throws Exception {
        return em.createNamedQuery("Supleente.findAll").getResultList();
    }
    
    public void alterar(Supleente obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
           // em.close();
        }
    }
    
    public void excluir(Supleente obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            //em.close();
        }
    }
    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }






    

}