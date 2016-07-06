<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
  String categoria = request.getParameter("id");
  String nomeCategoria = request.getParameter("txtNomeCategoria");
    CategoriaDAO dao = new CategoriaDAO();
    Categoria obj = dao.buscarPorChavePrimaria(Integer.parseInt(categoria));
    dao.alterar(obj);
    %>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Jogador  Atualizar</h4>
            <form action="upd-ok.jsp" method="post"> 
         <input type="hidden" name="txtId" value="<%=categoria%>" />       
 </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"  name="txtNomeCategoria" value="<%=obj.getNomeCategoria()%>"/>
                        <label class="mdl-textfield__label" for="txtNomeCategoria">Categoria</label>
                    </div>
                        
   
                <div class="mdl-cell--12-col">
                    
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                    <i class="material-icons">clear</i></button>
                    
           </div>
            </form>
        </div>

    </div>


<%@include file="../rodape-index.jsp"%>


