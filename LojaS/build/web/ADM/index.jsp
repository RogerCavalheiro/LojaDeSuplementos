<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho-index.jsp"%>
<%
String mensagem = ""; 
    if(request.getParameter("txtEntrarLogin")!=null && 
        request.getParameter("txtEntrarSenha")!=null) 
    { 
        ClienteDAO dao = new ClienteDAO(); 
        Cliente Cliente; 
        String login = request.getParameter("txtEntrar Login"); 
        String senha = request.getParameter("txtEntrarSenha"); 
        
        Cliente = dao.realizarLogin(login, senha); 
        if(Cliente !=null) 
        { 
            session.setAttribute("cliente", Cliente);
            response.sendRedirect("site.jsp");
        }
        else 
        {
            mensagem = "Login errado"; 
        }
    
    
    } 
  %>
    
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Gerenciamento do Sistema</h4>
          
        </div>

    </div>

</section>


<%@include file="rodape-index.jsp"%>
