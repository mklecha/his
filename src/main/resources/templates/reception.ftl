<#import 'common/head.ftl' as head/>
<#import 'common/header.ftl' as header/>
<#import 'common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl" xmlns="http://www.w3.org/1999/html">
	<@head.head 'Helena i Szymon - Wesele'/>
	<body>
		<@header.header 'reception' />

        <!-- Intro Header -->
        <header class="wedding reception">
            <div class="intro-body">
                <div class="container">
                    <div class="row margined">
                        <div class="col-md-8 col-md-offset-2 black-background wow fadeInDown">
                            <h1 class="brand-heading">WESELE</h1>
                            <p class="intro-text">
                                Na przyjęcie weselne zapraszamy do Starej Oranżerii<br/>
                                przy ul. <a href="#reception-map" class="page-scroll yellow">Marii Świątkiewicz 35</a> w&nbsp;Mrokowie.
                            </p>
                            <p>
                                W związku z ograniczoną liczbą miejsc postojowych oraz koniecznością organizacji transportu prosimy o wcześniejszą informację o sposobie dojazdu na wesele. Autokar ruszy spod kościoła o godzinie 16.30.<br/>
                                Planowane kursy powrotne o godzinie 1.00 i 3.00.
                            </p>
                            <p>
                                Gości jadących z nami do Mrokowa bardzo prosimy o odłożenie życzeń na czas przyjęcia.
                            </p>
                            <a href="#reception-text" class="btnghost page-scroll">
                                <i class="fa fa-angle-double-down"></i>&nbsp;Prezenty&nbsp;<i class="fa fa-angle-double-down"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="reception-text" class="map">
            <div class="row text-center">
                <div class="container reception-text margined-side wow fadeInLeft">
                    <h2>Prezenty</h2>
                    <p>
                        Dla tych, którzy chcieliby przy tej okazji czymś nas obdarować, a nie mają pomysłu, czym, przygotowaliśmy <a href="gifts.html">listę prezentów</a>, która może posłużyć jako inspiracja.
                    </p>
                    <p>
                        Oczywiście mile widziane również niespodzianki, także te w kopercie.
                    </p>
                    <p class="go-to-gifts">
                        <a href="gifts.html" class="btnghost"><i class="fa fa-gift"></i>Przejdź do listy prezentów</a>
                    </p>
                </div>
                <div id="reception-map" class="wow fadeInRight">
                    <h2>Mapa dojazdu do sali weselnej</h2>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9815.76245936552!2d20.856803800000012!3d52.0443945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa1f9d057757a2c83!2sStara+Oran%C5%BCeria!5e0!3m2!1spl!2sfr!4v1519069351940"
                                frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
        </section>

        <@footer.footer />

    </body>
</html>