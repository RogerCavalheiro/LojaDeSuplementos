<%@include file="../cabecalho.jsp"%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Suplemento - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
               
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  id="txtNomeSuple" />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="professsion" name="professsion">
                            <option value="option8">Hipercalórico</option>
                            <option value="option1">Whey</option>
                            <option value="option2">BCAA</option>
                            <option value="option3">Creatina</option>
                            <option value="option4">Glutamina</option>
                            <option value="option5">Pré-treino</option>
                            <option value="option6">Acessórios</option>
                            <option value="option7">Termogênico</option>
                        </select>
                        <label class="mdl-select__label" for="professsion">Selecione um produto</label>
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

</section>

<%@include file="../rodape.jsp"%>


