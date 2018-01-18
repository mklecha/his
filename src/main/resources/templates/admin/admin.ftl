<#import '../common/head.ftl' as head/>
<#import '../common/header.ftl' as header/>
<#import '../common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl" xmlns="http://www.w3.org/1999/html">
	<@head.head 'Helena i Szymon - Strona administratora'/>
    <body>
		<@header.header 'admin' />

        <header class="wedding reception">
            <div class="intro-body black-background">
                <div class="container admin-navigation">
                    <a id="gifts" class="col-xs-6 admin-nav" onclick="load(giftsId);" >Prezenty</a>
                    <a id="invitations" class="col-xs-6 admin-nav" onclick="load(invId);">Zaproszenia</a>
                </div>
                <div class="container" id="admin-tab"></div>
            </div>
        </header>
        <@footer.footer />
        <script type="text/javascript" src="js/admin.js"></script>
    </body>
</html>