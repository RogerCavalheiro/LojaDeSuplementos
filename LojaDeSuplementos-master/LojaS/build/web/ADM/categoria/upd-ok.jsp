<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%

    if (request.getParameter("txtCategoria") == null || request.getParameter("txtNomeCategoria") == null) {

        response.sendRedirect("list.jsp");

        return;

    }
    
    String Categoria = request.getParameter("txtCategoria");
    String nomeCategoria = request.getParameter("txtNomeCategoria");
    
    CategoriaDAO dao = new CategoriaDAO();
    
    Categoria obj = dao.buscarPorChavePrimaria(Integer.parseInt("lg"));
    obj.setCategoria(Integer.parseInt(Categoria));
    obj.setNomeCategoria(nomeCategoria);
    
    dao.incluir(obj);
    
    

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

