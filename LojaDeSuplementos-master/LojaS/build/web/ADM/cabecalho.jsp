<% 
   if(session.getAttribute("usuarioAdmin")== null) 
   {
       response.sendRedirect("../login.jsp");
   }
 

%>
<!doctype html>

<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title Style="text-align:center">Runeterra Suplementos</title>

        <!-- Add to homescreen for Chrome on Android -->
        <meta name="mobile-web-app-capable" content="yes">
        <link rel="icon" sizes="192x192" href="../images/touch/chrome-touch-icon-192x192.png">

        <!-- Add to homescreen for Safari on iOS -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-title" content="Material Design Lite">
        <link rel="apple-touch-icon-precomposed" href="../apple-touch-icon-precomposed.png">

        <!-- Tile icon for Win8 (144x144 + tile color) -->
        <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
        <meta name="msapplication-TileColor" content="#3372DF">

        <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
        <!--
        <link rel="canonical" href="../http://www.example.com/">
        -->

        <link href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <link rel="stylesheet" href="../mdl/material.min.css">
        <link rel="stylesheet" href="../mdl/styles.css">
        
       
    </head>
    
<body class="mdl-demo mdl-color--blue mdl-color-text--black mdl-base">
    
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
      <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--blue">
        <div class="mdl-layout__header-row">
        </div>
         <div class="mdl-layout--large-screen-only mdl-layout__header-row mdl-color--black">
                               <h3 Style="text-align:center">Runeterra Suplementos</h3> 
                               
        </div>
        <div  class="mdl-layout--large-screen-only mdl-layout__header-row ">
        </div>
          <div class=" mdl-js-ripple-effect mdl-color--black "> 
           <a href="../ADM/login.jsp" class="mdl-layout__tab mdl-color--red">Login</a> 
           <a href="   index.jsp" class="mdl-layout__tab mdl-color--green">Menu</a>   
           <a href="../ADM/suplemento/list.jsp" class="mdl-layout__tab mdl-color--orange">Suplementos</a> 
           <a href="../ADM/cliente/list.jsp" class="mdl-layout__tab mdl-color--pink ">Cliente</a> 
           <a href="../ADM/categoria/list.jsp" class="mdl-layout__tab mdl-color--brown">Categoria</a> 
           <a href="../site.jsp" class="mdl-layout__tab mdl-color--purple">Site</a> 
          
        </div>
      </header>
      <main class="mdl-layout__content">
        <div class="mdl-layout__tab-panel is-active" id="overview">
