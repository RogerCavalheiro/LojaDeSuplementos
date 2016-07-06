<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
        String msg="";
        String Cliente = request.getParameter("txtCliente");
        String nome = request.getParameter("txtNome");
        String email = request.getParameter("txtEmail");
        ClienteDAO dao = new ClienteDAO();
        dao.buscarPorChavePrimaria(Integer.parseInt(Cliente));
        Cliente obj = new Cliente();
        obj.setCliente(Integer.parseInt(Cliente));
        obj.setNome(nome);
        obj.setEmail(email);
      
        dao.incluir(obj);
    
    %>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Categoria - Cadastrar</h4>
            <p>Categoria cadastrada com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape-index.jsp"%>

