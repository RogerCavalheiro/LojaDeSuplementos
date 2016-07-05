package org.apache.jsp.ADM.suplemento;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Categoria;
import java.util.List;
import java.util.List;
import dao.CategoriaDAO;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/ADM/suplemento/../cabecalho.jsp");
    _jspx_dependants.add("/ADM/suplemento/../rodape-index.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
   if(session.getAttribute("usuarioAdmin")== null) 
   {
       response.sendRedirect("../login.jsp");
   }
 


      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("\n");
      out.write("<html lang=\"pt-br\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"description\" content=\"A front-end template that helps you build fast, modern mobile web apps.\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title Style=\"text-align:center\">Runeterra Suplementos</title>\n");
      out.write("\n");
      out.write("        <!-- Add to homescreen for Chrome on Android -->\n");
      out.write("        <meta name=\"mobile-web-app-capable\" content=\"yes\">\n");
      out.write("        <link rel=\"icon\" sizes=\"192x192\" href=\"../images/touch/chrome-touch-icon-192x192.png\">\n");
      out.write("\n");
      out.write("        <!-- Add to homescreen for Safari on iOS -->\n");
      out.write("        <meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\n");
      out.write("        <meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\n");
      out.write("        <meta name=\"apple-mobile-web-app-title\" content=\"Material Design Lite\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"../apple-touch-icon-precomposed.png\">\n");
      out.write("\n");
      out.write("        <!-- Tile icon for Win8 (144x144 + tile color) -->\n");
      out.write("        <meta name=\"msapplication-TileImage\" content=\"images/touch/ms-touch-icon-144x144-precomposed.png\">\n");
      out.write("        <meta name=\"msapplication-TileColor\" content=\"#3372DF\">\n");
      out.write("\n");
      out.write("        <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->\n");
      out.write("        <!--\n");
      out.write("        <link rel=\"canonical\" href=\"../http://www.example.com/\">\n");
      out.write("        -->\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\"\n");
      out.write("              rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../mdl/material.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../mdl/styles.css\">\n");
      out.write("        \n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("<body class=\"mdl-demo mdl-color--blue mdl-color-text--black mdl-base\">\n");
      out.write("    \n");
      out.write("    <div class=\"mdl-layout mdl-js-layout mdl-layout--fixed-header\">\n");
      out.write("      <header class=\"mdl-layout__header mdl-layout__header--scroll mdl-color--blue\">\n");
      out.write("        <div class=\"mdl-layout__header-row\">\n");
      out.write("        </div>\n");
      out.write("         <div class=\"mdl-layout--large-screen-only mdl-layout__header-row mdl-color--black\">\n");
      out.write("                               <h3 Style=\"text-align:center\">Runeterra Suplementos</h3> \n");
      out.write("                               \n");
      out.write("        </div>\n");
      out.write("        <div  class=\"mdl-layout--large-screen-only mdl-layout__header-row \">\n");
      out.write("        </div>\n");
      out.write("          <div class=\" mdl-js-ripple-effect mdl-color--black \"> \n");
      out.write("           <a href=\"../ADM/login.jsp\" class=\"mdl-layout__tab mdl-color--red\">Login</a> \n");
      out.write("           <a href=\"   index.jsp\" class=\"mdl-layout__tab mdl-color--green\">Menu</a>   \n");
      out.write("           <a href=\"../ADM/suplemento/list.jsp\" class=\"mdl-layout__tab mdl-color--orange\">Suplementos</a> \n");
      out.write("           <a href=\"../ADM/cliente/list.jsp\" class=\"mdl-layout__tab mdl-color--pink \">Cliente</a> \n");
      out.write("           <a href=\"../ADM/categoria/list.jsp\" class=\"mdl-layout__tab mdl-color--brown\">Categoria</a> \n");
      out.write("           <a href=\"../site.jsp\" class=\"mdl-layout__tab mdl-color--purple\">Site</a> \n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </header>\n");
      out.write("      <main class=\"mdl-layout__content\">\n");
      out.write("        <div class=\"mdl-layout__tab-panel is-active\" id=\"overview\">\n");
      out.write('\n');

    CategoriaDAO dao = new CategoriaDAO();
    List<Categoria> Lista = dao.listar();
    
      out.write("\n");
      out.write("<section class=\"section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp\">\n");
      out.write("    <div class=\"mdl-card mdl-cell mdl-cell--12-col\">\n");
      out.write("        <div class=\"mdl-card__supporting-text\">\n");
      out.write("            <h4>Suplemento - Cadastrar</h4>\n");
      out.write("            <form action=\"add-ok.jsp\" method=\"post\">\n");
      out.write("               \n");
      out.write("                      <div class=\"mdl-cell--12-col\"> \n");
      out.write("                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">\n");
      out.write("                        <input class=\"mdl-textfield__input\"  disabled required  name=\"txtSuplemento\" />\n");
      out.write("                        <label class=\"mdl-textfield__label\" for=\"txtSuplemento\">ID - Fornecido pelo sistema</label>\n");
      out.write("                    </div>\n");
      out.write("                          \n");
      out.write("                </div>\n");
      out.write("                    <div class=\"mdl-cell--12-col\"> \n");
      out.write("                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">\n");
      out.write("                        <input class=\"mdl-textfield__input\" type=\"text\" required  id=\"txtNome\" />\n");
      out.write("                        <label class=\"mdl-textfield__label\" for=\"txtNome\"> - Nome</label>\n");
      out.write("                    </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"mdl-cell--12-col\"> \n");
      out.write("                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">\n");
      out.write("                        <input class=\"mdl-textfield__input\" type=\"Integer\" required  id=\"txtQuantidade\" />\n");
      out.write("                        <label class=\"mdl-textfield__label\" for=\"txtQuantidade\"> - Quantidade</label>\n");
      out.write("                    </div>\n");
      out.write("                            \n");
      out.write("                       <select class=\"mdl-select__input\" id=\"professsion\" name=\"txtCategoria\">\n");
      out.write("                            ");
                            
                    for (Categoria c : Lista) {
                
      out.write("\n");
      out.write("                             <option value=\"");
      out.print(c.getCategoria());
      out.write('"');
      out.write('>');
      out.print(c);
      out.write("</option> \n");
      out.write("               ");
} 
      out.write("   \n");
      out.write("               \n");
      out.write("                 </select>\n");
      out.write("                            \n");
      out.write("                  \n");
      out.write("                      \n");
      out.write("                <div class=\"mdl-cell--12-col\">\n");
      out.write("                    \n");
      out.write("                    <button type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored\">\n");
      out.write("                    <i class=\"material-icons\">save</i></button>\n");
      out.write("                    <button type=\"reset\" class=\"mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored\">\n");
      out.write("                    <i class=\"material-icons\">clear</i></button>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                       \n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</section>\n");
      out.write("\n");
      out.write(" \n");
      out.write("<section class=\"section--footer mdl-color--white mdl-grid\">\n");
      out.write("\n");
      out.write("</section>\n");
      out.write("</div>\n");
      out.write("<div class=\"mdl-layout__tab-panel\" id=\"features\">\n");
      out.write("    <section class=\"section--center mdl-grid mdl-grid--no-spacing\">\n");
      out.write("\n");
      out.write("    </section>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<footer class=\"mdl-mega-footer\">\n");
      out.write("    <div class=\"mdl-mega-footer--middle-section\">\n");
      out.write("  \n");
      out.write("     </div>\n");
      out.write("</footer>\n");
      out.write("</main>\n");
      out.write("</div>\n");
      out.write("<script src=\"mdl/material.min.js\"></script>\n");
      out.write("<script src=\"mdl/jquery-2.1.4.min.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
