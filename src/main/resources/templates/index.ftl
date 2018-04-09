<#import 'common/head.ftl' as head/>
<#import 'common/header.ftl' as header/>
<#import 'common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Helena i Szymon - strona ślubna'/>
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		<@header.header 'main'/>

        <header class="intro intro-page">
            <div class="intro-body">
                <div class="container">
                    <div class="row" style="color: #ffa800;">
                        <div class="col-md-8 col-md-offset-2 wow fadeInDown">
                            <h1 class="brand-heading" style="margin-top: 0">Ślub<br/>Heleny i Szymona</h1>
                            <p class="intro-text"></p>
                            <a href="#about" class="btn btn-circle page-scroll yellow" style="border: 2px solid #56B153;">
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
                    <h2>Informacje ślubne</h2>
                    <div class="col-lg-8 col-lg-offset-2">
                        <p>
                            Nasz <b>Ślub</b> odbędzie się 15 sierpnia 2018 o godzinie 14.00 <br/>
                            w kościele pw. św.&nbsp;Szczepana,<br/>
                            przy ul.&nbsp;<a href="#wedding-map" class="page-scroll yellow">św.&nbsp;Szczepana 1</a> w&nbsp;Warszawie.<br/>
                            Dojść do kościoła można od ulic Narbutta lub Melsztyńskiej.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="photo-break ph-2">
            </div>
        </section>

        <section id="wedding-map" class="map">
            <div class="row text-center">
                <div class="col-md-8 wow fadeInLeft">
                    <h2>Mapa okolic kościoła</h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11630.692758898134!2d21.00940459078425!3d52.20610320472746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471eccd90c9f71a3%3A0x1ca4ba724c3ae9b4!2sKo%C5%9Bci%C3%B3%C5%82+Rzymskokatolicki+Pw.+%C5%9Bw.+Szczepana+Pierwszego+M%C4%99czennika!5e0!3m2!1spl!2spl!4v1519068691001"
                            frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="col-md-4 wedding-gifts margined-side wow fadeInRight">
                    <p>
                        Bardzo ucieszy nas, jeśli zamiast kwiatów zechcecie podarować nam datek, który przekażemy <a href="http://www.wakcji.org/uchodzcy/" target="_blank" class="yellow">Jezuickiemu Centrum Społecznemu „W Akcji”</a> na rzecz pomocy uchodźcom i migrantom przebywającym w naszym kraju.
                    </p>
                </div>
            </div>
        </section>

        <section>
            <div class="photo-break ph-1">
            </div>
        </section>

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
                                <a href="reception.html" class="btnghost"><i class="fa fa-info-circle"></i> Więcej informacji</a>
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
            const scrollToLogin = <#if error?? ||  logout?? || login?? >true<#else>false</#if>;
        </script>
        <script type="text/javascript" src="js/login.js"></script>

    </body>
</html>