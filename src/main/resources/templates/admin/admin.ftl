<#import '../common/head.ftl' as head/>
<#import '../common/header.ftl' as header/>
<#import '../common/footer.ftl' as footer/>
<!DOCTYPE html>
<html lang="pl" xmlns="http://www.w3.org/1999/html">
	<@head.head 'Wesele - Maja i Jędrek'/>
    <body>
		<@header.header 'admin' />

        <header class="wedding reception">
            <div class="intro-body">
                <div class="container admin-navigation">
                    <a href="javascript:load(giftsId);" class="col-xs-6">Prezenty</a>
                    <a href="javascript:load(invId);" class="col-xs-6">Zaproszenia</a>
                </div>
                <div class="container" id="admin-tab"></div>
            </div>
        </header>
        <@footer.footer />
        <script type="text/javascript" src="js/admin.js"></script>
    </body>
</html>