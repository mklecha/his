<table class="table">
    <tr>
        <th width="10%">Klucz</th>
        <th width="20%">Link</th>
        <th width="50%">Treść wiadomości</th>
        <th width="20%"></th>
    </tr>
    <#list invitations as invitation>
        <tr>
            <td>${invitation.pageKey}</td>
            <td><a href="/invitation-${invitation.pageKey}.html">link</a></td>
            <td>${invitation.message}</td>
            <td>
                <button class="btn btn-danger phase1 p1-${invitation.pageKey}" onclick="phase2('${invitation.pageKey}');">Usuń</button>

                <button class="btn btn-danger phase2 p2-${invitation.pageKey}" style="display: none;" onclick="deleteInvitation('${invitation.pageKey}');">
                    Usuń
                </button>
                <button class="btn btn-warning phase2 p2-${invitation.pageKey}" style="display: none;" onclick="phase1('${invitation.pageKey}');">Wróć
                </button>
            </td>
        </tr>
    </#list>
</table>
<form id="new-inv-form" class="form-horizontal" method="POST" autocomplete="off">
    <fieldset>
        <!-- Form Name -->
        <legend>Nowe zaproszenie</legend>

        <div class="col-md-8 col-md-offset-2">
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-2 control-label" for="name">Klucz</label>
                <div class="col-md-10">
                    <input id="name" name="pageKey" type="text" placeholder="Tu wpisz klucz (musi być unikatowy)" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-2 control-label" for="message">Treść wiadomości</label>
                <div class="col-md-10">
                    <input id="message" name="message" type="text" placeholder="Tu wpisz treść wiadomości" class="form-control input-md" required="">
                </div>
            </div>
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-2 control-label" for="plural">Zaproszenie w liczbie mnogiej?</label>
                <div class="col-md-10">
                    <input id="plural" name="plural" type="checkbox" class="form-control input-md">
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <div class="col-md-4 col-md-offset-4">
                    <button class="btn btn-primary">Zapisz</button>
                </div>
            </div>
        </div>
    </fieldset>
</form>
<script>
    $('#new-inv-form').submit(function (event) {
        event.preventDefault();
        $.ajax({
            url: "/add-invitation.html",
            data: $(this).serialize(),
            success: function (data) {
                $('#admin-tab').html(data);
            }
        });
    });
</script>