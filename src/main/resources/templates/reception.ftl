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
                                Samochodem dojedziecie tam, jeśli za Jabłonowem skręcicie z Alei Krakowskiej w prawo w ulicę Legionów, a następnie w lewo w&nbsp;ulicę Marii Świątkiewicz.<br/>
                                Autokarem – prosto spod kościoła.
                            </p>
                            <p>
                                W związku z ograniczoną liczbą miejsc postojowych oraz koniecznością organizacji transportu będziemy wcześniej pytać o decyzje dotyczące sposobu dojazdu na przyjęcie.
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
                        Żeby mieć pewność, że nikt nie podkradnie Wam pomysłu, napiszcie mail z prośbą o rezerwację do <span style="color: red">TU BRAKUJE DO KOGO</span>. Jego adres: <a href="mailto:jedrekimaja@gmail.com" style="color: red">TU POTRZEBA MAILA</a>
                    </p>
                    <p>
                        Oczywiście mile widziane także niespodzianki, zwłaszcza te, które zmieszczą się w kopercie.
                    </p>
                    <p class="go-to-gifts">
                        <a href="gifts.html" class="btnghost"><i class="fa fa-gift"></i>Przejdź do listy prezentów</a>
                    </p>
                </div>
                <div id="reception-map" class="wow fadeInRight">
                    <h2>Mapa dojazdu do sali weselnej</h2>
                    <#--<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d156743.43278255183!2d20.800615320111756!3d52.13220887400482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x471eccd90c9f71a3%3A0x1ca4ba724c3ae9b4!2sParafia+%C5%9Bw.+Szczepana+Pierwszego+M%C4%99czennika%2C+%C5%9Bw.+Szczepana%2C+Warszawa%2C+Polska!3m2!1d52.2059587!2d21.017591!4m5!1s0x471930a080737033%3A0xa1f9d057757a2c83!2sStara+Oran%C5%BCeria%2C+Marii+%C5%9Awi%C4%85tkiewicz+35%2C+05-552%2C+Polska!3m2!1d52.044394499999996!2d20.856803799999998!5e0!3m2!1spl!2sfr!4v1519070218997"-->
                            <#--frameborder="0" allowfullscreen></iframe>-->
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9815.76245936552!2d20.856803800000012!3d52.0443945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa1f9d057757a2c83!2sStara+Oran%C5%BCeria!5e0!3m2!1spl!2sfr!4v1519069351940"
                            frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
        </section>

        <@footer.footer />

    </body>
</html>