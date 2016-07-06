<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String categoria = request.getParameter("id");
    String nomeCategoria = request.getParameter("txtNomeCategoria");
  
    
    
    CategoriaDAO dao = new CategoriaDAO();
    Categoria obj = dao.buscarPorChavePrimaria(Integer.parseInt(categoria));
    
   obj.setCategoria(Integer.parseInt(categoria));
   obj.setNomeCategoria(nomeCategoria);
           
           
    dao.alterar(obj);
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Categoria atualizada.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape-index.jsp"%>

