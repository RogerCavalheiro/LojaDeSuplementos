<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="dao.SuplementoDAO"%>
<%@page import="modelo.Suplemento"%>
<%@include file="../cabecalho.jsp"%>
<!-- gambiarra pra alinhar o botão a esquerda-->
<style>
    .direita
            {
                text-align: right;
                padding-right: 10%;
                
            }
</style>
<%

    SuplementoDAO dao = new SuplementoDAO();
    List<Suplemento> lista = dao.listar();


%> 
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Jogador</h4>
            
            <div class="direita">
                <a href="add.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>
            
    <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>
                        
                        <th>ID: </th>
                        
                        <th>Suplemento:</th>
                        
                        <th>Quantidade: </th>
                        
                        <th>Categoria: </th>
                        
                      
                    </tr>
                    <%                        for (Suplemento supl: lista) {


                    %>
      
                    </thead>
                <tbody>
                    <tr>
                        <td><%=supl.getSuplemento()%></td>
                        <td><%=supl.getNomeSuple()%> </td>
                        <td><%=supl.getQuantidade() %></td>
                        <td><%=supl.getCategoria()%></td>
                       

                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?LoginJog=<%=supl.getNomeSuple()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?LoginJog=<%=supl.getNomeSuple()%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>

                        </td>

                    </tr>
                    <tr>

                </tbody>
                <%

                    }


                %>

</section>

<%@include file="../rodape-index.jsp"%>

