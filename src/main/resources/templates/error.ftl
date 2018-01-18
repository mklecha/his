<#import 'common/head.ftl' as head/>
<#import 'common/header.ftl' as header/>
<#import 'common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl">
    <@head.head 'Error 404'/>
    <body>
        <header class="wedding contact-bg">
            <div class="intro-body">
                <div class="container">
                    <div class="row margined">
                        <div class="black-background">
                            <h1 class="brand-heading yellow" style="padding-left: 15px; padding-right: 15px;">Popsowało się :(</h1>
                            <p class="intro-text" style="padding-left: 15px; padding-right: 15px;">
                               Coś poszło nie tak. Wróć na stronę główną, a jeśli błąd będzie się powtarzał - napisz do administratora, on się tym zajmie. Kontakt do niego w stopce.
                            </p>
                            <p>
                                <a href="./" class="btnghost"><i class="fa fa-info-circle"></i> Zabierz mnie na stronę główną</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </header>

    <@footer.footer />

    </body>
</html>

