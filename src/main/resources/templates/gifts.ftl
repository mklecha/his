<#import 'common/head.ftl' as head/>
<#import 'common/header.ftl' as header/>
<#import 'common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
	<@head.head 'Helena i Szymon - Prezenty'/>
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		<@header.header 'reception' />


        <section id="gifts" class="wedding reception">

            <div style="margin-top: <#if gifts?size == 0>200<#else>100</#if>px; margin-bottom: 50px;">
                <h1 class="wow fadeInDown" id="title">Lista prezentów</h1>
                <div class="container">
                    <p>
                        Ze względów technicznych nie ma możliwości odrezerwowania prezentu. Nie przechowujemy też informacji, kto co zarezerwował. W przypadku problemów dajcie znać nam lub Michałowi (kontakt w stopce strony).<br/>
                        Po zarezerwowaniu link nie jest aktywny, warto wcześniej zapisać przykład :-)
                    </p>
                    <#list gifts as gift>
                        <div class="row gift-list">
                            <div id="${gift.id}" class="col-sm-12 bg wow <#if gift?index%2 ==0>bg-even fadeInRight<#else>bg-odd fadeInLeft</#if> margined-side">
                                <div class="col-sm-3 col-md-3 gift-title">
                                    ${gift.name}
                                </div>
                                <div class="col-sm-6 col-md-7 gift-descr">
                                    ${gift.description}<br/>
                                    <#if gift.link?has_content> <a href="${gift.link}" target="_blank"><u>Przykład tutaj</u></a> </#if>
                                </div>
                                <div class="col-sm-3 col-md-2 col-md-offset-0 gift-descr">
                                    <#if !gift.reserved>
                                        <button class="btn btn-primary" style="width: 100%" onclick="reserveGift(${gift.id})">Zarezerwuj</button>
                                    </#if>
                                </div>
                                <#if gift.reserved>
                                    <div class="gift-reserved">
                                        ZAREZERWOWANE
                                    </div>
                                </#if>
                            </div>
                        </div>
                    <#else>
                        <div class="wow fadeInUp">
                            <h2>Jeszcze nic tu nie ma, ale zajrzyj niedługo, pilnie pracujemy nad wypełnieniem tej listy!</h2>
                        </div>
                    </#list>
                </div>

            </div>
        </section>
        <@footer.footer />

    </body>
</html>