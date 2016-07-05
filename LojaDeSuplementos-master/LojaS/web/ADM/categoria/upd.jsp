<%@page import="java.util.List"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
String Categoria = request.getParameter("txtCategoria");
    CategoriaDAO dao = new CategoriaDAO();
    Categoria obj = new Categoria();
    String nomeCategoria = request.getParameter("txtNomeCategoria"); 
    obj.setCategoria(Integer.parseInt(Categoria));
    obj.setNomeCategoria(nomeCategoria);
    dao.alterar(obj);
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Jogador  Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                
                
 </div>
                    <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  id="txtCategoria" />
                        <label class="mdl-textfield__label" for="txtCategoria"> - Categoria</label>
                    </div>
                                 
                </div>
                    <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  id="txtNomeCategoria" />
                        <label class="mdl-textfield__label" for="txtNomeCategoria"> - Categoria</label>
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


