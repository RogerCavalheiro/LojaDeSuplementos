
<%@page import="modelo.Suplemento"%>
<%@page import="dao.SuplementoDAO"%>
<%@include file="cabecalho.jsp"%>
<%
String mensagem = ""; 
    if(request.getParameter("txtEntrarLogin")!=null && 
        request.getParameter("txtEntrarSenha")!=null) 
    { 
        SuplementoDAO dao = new SuplementoDAO(); 
        Suplemento Suplemento; 
        String login = request.getParameter("txtEntrar Login"); 
        String senha = request.getParameter("txtEntrarSenha"); 
        
        Suplemento = dao.realizarLogin(login, senha); 
        if(Suplemento !=null) 
        { 
            session.setAttribute("suplemento", Suplemento);
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
