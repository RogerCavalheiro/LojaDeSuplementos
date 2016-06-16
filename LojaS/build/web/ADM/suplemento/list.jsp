<%@page import="modelo.Suplemento"%>
<%@page import="java.util.List"%>
<%@page import="dao.SuplementoDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    SuplementoDAO dao = new SuplementoDAO();
    List<Cliente> lista = dao.listar();
%>


<style>
    .direita
            {
                text-align: right;
                padding-right: 10%;
                
            }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h3> Cadastro de Produtos</h3>
         
            <div class="direita">
                <a href="adicionar.jsp">
                   <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent">
                         <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>

                        <th>Suplemento</th>
                        <th>Nome</th>                       
                        <th>Categoria</th>

                        
                    </tr>
                </thead>
                <tbody>
                    <%
                    for(Suplemento item:lista){                        
                    %>
                    <tr>
                        <td><%=item.getSuplemento%></td>
                        <td><%=item.getNomeSuple()%></td> 
                        <td><%=item.getCategoria()%></td> 
                       
                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="atualizar.jsp?id=<%=item.getSuplemento()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="excluir-ok.jsp?id=<%=item.getSuplemento()%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>
                            
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>