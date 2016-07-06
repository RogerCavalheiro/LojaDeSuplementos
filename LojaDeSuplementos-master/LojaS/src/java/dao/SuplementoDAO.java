package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Suplemento;




/**
 *
 * @author marcelosiedler
 */
public class SuplementoDAO {
    EntityManager em;
    
    public SuplementoDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em =  emf.createEntityManager();
    }
    
    public void incluir(Suplemento obj) throws Exception {
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
    public Suplemento realizarLogin(String login, String senha) 
    {
        TypedQuery<Suplemento> query = 
                em.createNamedQuery("Suplemento.realizarLogin", Suplemento.class); 
        
        query.setParameter("login", login); 
        query.setParameter("senha", senha); 
        Suplemento suplemento; 
        try { 
            suplemento= query.getSingleResult(); 
        } catch (Exception e) { 
            suplemento = null ; 
        }
        
        return suplemento;
    }
    public List<Suplemento> listar() throws Exception {
        return em.createNamedQuery("Suplemento.findAll").getResultList();
    }
    
    public void alterar(Suplemento obj) throws Exception {
        
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
    
    public void excluir(Suplemento obj) throws Exception {
        
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
     public Suplemento buscarPorChavePrimaria(Integer Suplemento) {
        
        return em.find(Suplemento.class, Suplemento);
    }
    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }






    

}