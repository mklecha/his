<#import 'common/head.ftl' as head/>
<#import 'common/header.ftl' as header/>
<#import 'common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Maja i Jędrek - strona ślubna'/>
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		<@header.header 'main'/>

        <header class="intro">
            <div class="intro-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 wow fadeInDown">
                            <h1 class="brand-heading">Witamy na naszej stronie</h1>
                            <p class="intro-text">Helena i Szymon</p>
                            <a href="#about" class="btn btn-circle page-scroll yellow">
                                <i class="fa fa-angle-double-down animated yellow"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- About Section -->
        <section id="about">
            <div class="container content-section text-center">
                <div class="row col-xs-10 col-xs-offset-1 wow fadeInLeft">
                    <h2>Będziemy mężem i żoną, <br/>poważna sprawa.</h2>
                    <div class="col-lg-8 col-lg-offset-2">
                        <p>
                            Ze względu na powagę sytuacji mamy nawet stronę internetową!<br/> Mamy nadzieję, że będzie pomocna i Wam się spodoba.
                        </p>
                        <p>
                            Buziaki od M i ściski od F
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="photo-break">
            </div>
        </section>

        <section>
            <div id="login" class="container content-section text-center">
                <div class="row col-xs-10 col-xs-offset-1 wow fadeInLeft">
                    <#if !userRole??>
                        <h2>Więcej informacji po zalogowaniu się</h2>
                        <div class="col-lg-8 col-lg-offset-2">
                            <p>
                                Aby uzyskać znaleźć więcej informacji wpisz hasło z zaproszenia
                            </p>
                            <form method="POST" class="row logging-form">
                                <input type="hidden" name="username" value="guest"/>
                                <input type="password" name="password" class="col-xs-12 col-sm-8"/>
                                <button class="col-xs-12 col-sm-4">Zaloguj</button>
                            </form>
                        </div>
                    <#else>
                        Zalogowano
                    </#if>
                    <#if error??>
                        <p>
                            Błąd logowania
                        </p>
                    </#if>
                    <#if logout??>
                        <p>
                            Wylogowano pomyślnie
                        </p>
                    </#if>

                </div>
            </div>
        </section>


        <@footer.footer />

        <script>
            const scrollToLogin = <#if error?? ||  logout??>true<#else>false</#if>;
        </script>
        <script type="text/javascript" src="js/login.js"></script>

    </body>
</html>