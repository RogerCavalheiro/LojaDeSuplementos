
    package dao ;
    
    import java.util.List ;
    import javax.persistence.EntityManager ;
    import javax.persistence.EntityManagerFactory ;
    import modelo.Suplemento ;

    /**
     *
     * @author marcelosiedler
     */
    public class SuplementoDAO {

        EntityManager em;
        
        public SuplementoDAO() throws Exception {
            EntityManagerFactory emf;
            emf = Conexao.getConexao();
            em = emf.createEntityManager();
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

        public List<Suplemento> listar() throws Exception {
            return em.createNamedQuery("Classe.findAll").getResultList();
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

        public void fechaEmf() {
            em.close();
            Conexao.closeConexao();
        }
        
    }
