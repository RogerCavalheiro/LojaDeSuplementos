<%@page import="org.w3c.dom.Node"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Suplemento"%>
<%@page import="dao.SuplementoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
   
    String msg ="";
  if(        request.getParameter("txtSuplemento") == null
            || request.getParameter("txtNomeSuple") == null
            || request.getParameter("txtQuantidade") == null
           || request.getParameter("txtCategoria") ==null
            ){
       response.sendRedirect("add.jsp");
   }
    else{

       String nomeSuple = request.getParameter("txtNomeSuple");
        String quantidade = request.getParameter("txtQuantidade");
        String categoria = request.getParameter("txtCategoria");
        Categoria c = new Categoria();
        c.setCategoria(Integer.parseInt(categoria));
        SuplementoDAO dao = new SuplementoDAO();
        Suplemento obj = new Suplemento();

      obj.setNomeSuple(nomeSuple);
       obj.setQuantidade(Integer.parseInt(quantidade));
       obj.setCategoria(c);
        dao.incluir(obj);

        try{
           dao.incluir(obj);
            msg ="Registro cadastrado com sucesso";
        }
       catch(Exception ex){
            msg ="Erro ao cadastrar registro";
        }
    }
      
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Suplemento - Cadastrar</h4>
            <p>Suplemento cadastrado com sucesso.</p>
            
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape-index.jsp"%>

