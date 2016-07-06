<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="dao.ClienteDAO"%>
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
      ClienteDAO dao = new ClienteDAO();
    List<Cliente> lista = dao.listar();

    %>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Cliente</h4>
            <div class="direita">
                <a href="add.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                         <i class="material-icons">add</i>
                    </button>  
                </a>
            <!-- Colored mini FAB button -->
            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>
                        
                        <th>ID: </th>
                        
                        <th>Nome:</th>
                        
                        <th>Email: </th>
                        
                      
                    </tr>
                    <%                        for (Cliente c: lista) {


                    %>
      
                    </thead>
                <tbody>
                    <tr>
                        <td><%=c.getCliente()%></td>
                        <td><%=c.getNome()%> </td>
                        <td><%=c.getEmail() %></td>
                       

                        <td>
                            <!-- 
                                Atualizar 
                            -->
                           <div id="ttupd" class="icon material-icons">
                               <i class="material-icons"><a href="upd.jsp?Cliente=<%=c.getNome()%>">update</a></i>
                               <i class="material-icons"><a href="upd.jsp?Cliente=<%=c.getEmail()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            
                            <!-- 
                                Excluir 
                            -->
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
                            
   


<%@include file="../rodape-index.jsp"%>

