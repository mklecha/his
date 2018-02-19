<#import 'common/head.ftl' as head/>
<#import 'common/header.ftl' as header/>
<#import 'common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Helena i Szymon - Informacje'/>
	<body>
		<@header.header 'info'/>

        <header class="wedding">
            <div class="intro-body">
                <div class="container">
                    <div class="row margined">
                        <div class="col-md-8 col-md-offset-2 black-background wow fadeInDown">
                            <h1 class="brand-heading">ŚLUB</h1>
                            <p class="intro-text">

                                Nasz <b>Ślub</b> odbędzie się 15 sierpnia 2018 o godzinie 14.00 <br/>
                                w kościele pw. Św.&nbsp;Szczepana,<br/>
                                przy ul.&nbsp;<a href="#wedding-map" class="page-scroll yellow">Św.&nbsp;Szczepana 1</a> w&nbsp;Warszawie.<br/>
                                Dojść do kościoła można od ulic Narbutta lub Melsztyńskiej.<br/><br/>
                                Mapa znajduje się poniżej.
                            </p>
                            <a href="#wedding-map" class="btn btn-circle page-scroll yellow">
                                <i class="fa fa-angle-double-down animated yellow"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="wedding-map" class="map">
            <div class="row text-center">
                <div class="col-md-8 wow fadeInLeft">
                    <h2>Mapa okolic do kościoła</h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11630.692758898134!2d21.00940459078425!3d52.20610320472746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471eccd90c9f71a3%3A0x1ca4ba724c3ae9b4!2sKo%C5%9Bci%C3%B3%C5%82+Rzymskokatolicki+Pw.+%C5%9Bw.+Szczepana+Pierwszego+M%C4%99czennika!5e0!3m2!1spl!2spl!4v1519068691001"
                            frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="col-md-4 wedding-gifts margined-side wow fadeInRight">
                    <h2>Więcej radości?</h2>
                    <p>
                        Bardzo ucieszy nas, jeśli zamiast kwiatów zechcecie podarować nam datek, który przekażemy <a href="http://www.wakcji.org/uchodzcy/" target="_blank" class="yellow">Jezuickiemu Centrum Społecznemu „W Akcji”</a> na rzecz pomocy uchodźcom i migrantom przebywającym w naszym kraju.
                    </p>
                </div>
            </div>
        </section>

        <@footer.footer />
    </body>
</html>

