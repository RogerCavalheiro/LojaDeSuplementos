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
            
            <h1 Style="text-align:center"<i>Runeterra Suplementos</i></h1>
            <h4>
                <center>Sobre Nós</center> <br>

  A busca por hábitos saudáveis e pelo corpo em forma, tem se tornado a cada dia, não somente um luxo, mas uma necessidade para quem valoriza e sabe o que é qualidade de vida.
  Por isso os profissionais da Runeterra Suplementos vem proporcionando a maior variedade de suplementos alimentares e acessórios esportivos, nacionais e importados, para que você alcance o seu objetivo com eficiência.

Nosso compromisso é atendê-lo da melhor maneira, com qualidade, variedade e os melhores preços do mercado.</h4>
          
        </div>

    </div>

</section>


<%@include file="rodape-index.jsp"%>
