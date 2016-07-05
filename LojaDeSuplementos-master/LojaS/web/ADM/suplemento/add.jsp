<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    CategoriaDAO dao = new CategoriaDAO();
    List<Categoria> Lista = dao.listar();
    %>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Suplemento - Cadastrar</h4>
            <form action="add-ok.jsp" method="post">
               
                      <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input"  disabled required  name="txtSuplemento" />
                        <label class="mdl-textfield__label" for="txtSuplemento">ID - Fornecido pelo sistema</label>
                    </div>
                          
                </div>
                    <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  id="txtNome" />
                        <label class="mdl-textfield__label" for="txtNome"> - Nome</label>
                    </div>
                        
                        <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="Integer" required  id="txtQuantidade" />
                        <label class="mdl-textfield__label" for="txtQuantidade"> - Quantidade</label>
                    </div>
                            
                       <select class="mdl-select__input" id="professsion" name="txtCategoria">
                            <%                            
                    for (Categoria c : Lista) {
                %>
                             <option value="<%=c.getCategoria()%>"><%=c%></option> 
               <%} %>   
               
                 </select>
                            
                  
                      
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

<%@include file="../rodape-index.jsp"%>


