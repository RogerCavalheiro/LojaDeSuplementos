<%@page import="modelo.Categoria"%>
<%@page import="modelo.Suplemento"%>
<%@page import="dao.SuplementoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String msg ="";
    if(request.getParameter("txtNome") == null
        || request.getParameter("txtCategoria") == null
        || request.getParameter("txtSuplemento") == null
        || request.getParameter("txtQuantidade") == null)
    {
        response.sendRedirect("add.jsp");
    }
    else{
    String Suplemento = request.getParameter("txtSuplemento"); 
    String NomeSuple = request.getParameter("txtNomeSuple");
    String Quantidade = request.getParameter("txtQuantidade");
    String Categoria = request.getParameter("txtCategoria");
  
    
     
     
      SuplementoDAO dao = new SuplementoDAO();
      Suplemento obj = new Suplemento();
    
      
                         obj.setSuplemento(Integer.parseInt(Suplemento)); 
                         obj.setNomeSuple(NomeSuple); 
                         obj.setQuantidade(Integer.parseInt(Quantidade)); 
                         Categoria categ = new Categoria();
                         categ.setCategoria(Integer.parseInt(Categoria));
                        
        
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

