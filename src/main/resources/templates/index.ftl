<#import 'common/head.ftl' as head/>
<#import 'common/header.ftl' as header/>
<#import 'common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Helena i Szymon - strona ślubna'/>
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		<@header.header 'main'/>

        <header class="intro">
            <div class="intro-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 wow fadeInDown">
                            <h1 class="brand-heading">Ślub<br/>Heleny i Szymona</h1>
                            <p class="intro-text"></p>
                            <a href="#login" class="btn btn-circle page-scroll yellow">
                                <i class="fa fa-angle-double-down animated yellow"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section>
            <div id="login" class="container content-section text-center">
                <div class="row col-xs-10 col-xs-offset-1 wow fadeInLeft">
                    <#if userRole != 'GUEST'>
                        <h2>Jesteś zalogowany!</h2>
                        <div class="col-lg-8 col-lg-offset-2">
                            <p>
                               Więcej informacji znajdziecie w zakładkach "ŚLUB" i "WESELE", jako zalogowany użytkownik masz też dostęp do listy prezentów.
                            </p>
                            <p>
                                <a href="wedding.html" class="btnghost"><i class="fa fa-info-circle"></i> Więcej informacji</a>
                            </p>
                        </div>
                    <#else>
                        <h2>Więcej informacji po zalogowaniu się</h2>
                        <div class="col-lg-8 col-lg-offset-2">
                            <p>
                                Aby uzyskać znaleźć więcej informacji wpisz hasło z zaproszenia
                            </p>
                            <form method="POST" action="/login" id="login-form" class="row logging-form">
                                <input type="hidden" name="username" value="guest"/>
                                <input type="password" name="password" class="col-xs-12 col-sm-8"/>
                                <button class="col-xs-12 col-sm-4">Zaloguj</button>
                            </form>
                        </div>
                        <#if error??>
                        <div class="col-lg-8 col-lg-offset-2 my-alert">
                            <div class="alert alert-danger alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <strong>Błąd!</strong> Wpisano niepoprawne hasło.
                            </div>
                        </div>
                        </#if>
                        <#if logout??>
                        <div class="col-lg-8 col-lg-offset-2 my-alert">
                            <div class="alert alert-info alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <strong>Sukces!</strong> Wylogowałeś się pomyślnie.
                            </div>
                        </div>
                        </#if>
                    </#if>
                </div>
            </div>
        </section>


        <@footer.footer />

        <script>
            const scrollToLogin = <#if error?? ||  logout?? || login??>true<#else>false</#if>;
        </script>
        <script type="text/javascript" src="js/login.js"></script>

    </body>
</html>