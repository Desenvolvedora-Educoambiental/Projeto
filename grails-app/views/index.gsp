<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Estrela do Mar</title>
</head>
<body>
    <content tag="nav">

        <li class="dropdown">

            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sobre<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#Sobre">História</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Categorias <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#Vestidos">Vestidos</a></li>
                <li><a href="#Blusas">Blusas</a></li>
                <li><a href="#Saias">Saias</a></li>
                <li><a href="#Sapatos">Sapatos</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
             <ul class="dropdown-menu">
                           <li><a href="LoginE.groovy">Entrar</a></li>
                            <li><a href="Login.groovy">Cadastrar</a></li>
             </ul>
           </li>

        <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Carrinho <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                            <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                        </g:each>
                    </ul>
                </li>
    </content>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Bem-Vindo(a) a Estrela do Mar</h1>

            <p>
                Congratulations, you have successfully started your first Grails application! At the moment
                this is the default page, feel free to modify it to either redirect to a controller or display
                whatever content you may choose. Below is a list of controllers that are currently deployed in
                this application, click on each to execute its default action:
            </p>
            <h1 id="Sobre">Sobre</h1>
            <p>A loja Estrela do Mar começou a partir........................................................
             blblablablblabalbalbalabalbalaaaaaaaaaaaaaaaaaaalbalbalbalaballlllllllllllllllllllllllblablabalba
             blabalblllllllllllllllllllllllllllllllabalbalablabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbllalbablbl</p>

             <h1>CATEGORIAS</h1>
             <h2 id="Vestidos">Vestidos</h2>
             <img src="https://http2.mlstatic.com/D_Q_NP_817278-MLB26976343638_032018-Q.jpg">
             <img src="http://cea.vteximg.com.br/arquivos/ids/5489306-463-556/Vestido-Longo-Infantil-Estampado-de-Estrelas-com-Fendas-Laterais-Preto-9195756-Preto_1.jpg?v=636754630747170000">
             <h2 id="Blusas">Blusas</h2>
             <img src="http://cea.vteximg.com.br/arquivos/ids/5489306-463-556/Vestido-Longo-Infantil-Estampado-de-Estrelas-com-Fendas-Laterais-Preto-9195756-Preto_1.jpg?v=636754630747170000">
             <img src="https://http2.mlstatic.com/D_Q_NP_817278-MLB26976343638_032018-Q.jpg">
             <h2 id="Saias">Saias</h2>
             <img src="https://http2.mlstatic.com/D_Q_NP_817278-MLB26976343638_032018-Q.jpg">
             <img src="https://http2.mlstatic.com/D_Q_NP_817278-MLB26976343638_032018-Q.jpg">
             <h2 id="Sapatos">Sapatos</h2>
             <img src="https://http2.mlstatic.com/D_Q_NP_817278-MLB26976343638_032018-Q.jpg">
             <img src="https://http2.mlstatic.com/D_Q_NP_817278-MLB26976343638_032018-Q.jpg">
        </section>
    </div>

</body>
</html>
