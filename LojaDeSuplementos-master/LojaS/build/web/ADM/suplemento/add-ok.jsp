<%@page import="modelo.Suplemento"%>
<%@page import="dao.SuplementoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%

    String Suplemento = request.getParameter("txtSuplemento"); 
    String NomeSuple = request.getParameter("txtNomeSuple");
    String Quantidade = request.getParameter("txtQuantidade");
    String Categoria = request.getParameter("txtCategoria");
    
      
      SuplementoDAO dao = new SuplementoDAO();
      Suplemento supl = new Suplemento();
      
                         supl.setSuplemento(); 
                         supl.setNomeSuple(); 
                         supl.setQuantidade(); 
                         supl.setCategoria(); 
      
      dao.incluir(supl);
%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria - Cadastrar</h4>
            <p>Categoria cadastrada com sucesso.</p>
            
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../../rodape.jsp"%>

