<%@include file="../cabecalho.jsp"%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    
    
    
    <div class="mdl-card mdl-cell mdl-cell--12-col">
    <div class="mdl-card__supporting-text">
        
            
            <h4>Cliente - Cadastro</h4>

            <form action="add-ok.jsp" method="post">
                
                    <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input"  disabled required  name="txtCliente" />
                        <label class="mdl-textfield__label" for="txtCliente">ID - Fornecido pelo sistema</label>
                    </div>
                       
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNome" required  id="txtCategoria" />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtEmail" required  id="txtCategoria" />
                        <label class="mdl-textfield__label" for="txtEmail">Email</label>
                    </div>
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
