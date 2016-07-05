<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@include file="../cabecalho.jsp"%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Categoria - Cadastrar</h4>
            <form action="add-ok.jsp" method="post">
                
                 </div>
                    <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  id="txtCategoria" />
                        <label class="mdl-textfield__label" for="txtCategoria"> - ID</label>
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

</section>

<%@include file="/rodape.jsp"%>


