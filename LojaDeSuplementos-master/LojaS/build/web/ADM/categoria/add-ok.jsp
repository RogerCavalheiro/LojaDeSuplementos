<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@include file="../cabecalho.jsp"%>
<%
 
    String msg ="";
    if(
            request.getParameter("txtNomeCategoria") == null){
        response.sendRedirect("add.jsp");
    }
    else{
        
        String nomeCategoria = request.getParameter("txtNomeCategoria");
        
        CategoriaDAO dao = new CategoriaDAO();
        Categoria obj = new Categoria();
        
        obj.setNomeCategoria(nomeCategoria);
        
        dao.incluir(obj);
        
        try{
            dao.incluir(obj);
            msg ="Registro cadastrado com sucesso";
        }
        catch(Exception ex){
            msg ="Erro ao cadastrar registro";
        }
    }
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoriao - Cadastrar</h4>
            <p>Categoria cadastrada com sucesso.</p>
            
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape-index.jsp"%>

