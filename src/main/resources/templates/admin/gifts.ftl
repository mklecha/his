<table class="table">
    <tr>
        <th width="5%">Id</th>
        <th width="15%">Nazwa</th>
        <th width="10%">Link</th>
        <th width="40%">Opis</th>
        <th width="10%"></th>
        <th width="20%"></th>
    </tr>
    <#list gifts as gift>
        <tr <#if gift.reserved>class="reserved"</#if>>
            <td>${gift.id?c}</td>
            <td>${gift.name}</td>
            <td><#if gift.link?has_content><a href="${gift.link}">link</a></#if></td>
            <td>${gift.description}</td>
            <td>
                <#if !gift.reserved>
                    <button class="btn btn-primary" style="width: 100%" onclick="changeReservation(${gift.id});">Zarezerwuj</button>
                <#else>
                    <button class="btn btn-warning" style="width: 100%" onclick="changeReservation(${gift.id});">Odrezerwuj</button>
                </#if>
            </td>
            <td>
                <button class="btn btn-danger phase1 p1-${gift.id}" onclick="phase2(${gift.id});">Usuń</button>

                <button class="btn btn-danger phase2 p2-${gift.id}" style="display: none;" onclick="deleteGift(${gift.id});">
                    Usuń
                </button>
                <button class="btn btn-warning phase2 p2-${gift.id}" style="display: none;" onclick="phase1(${gift.id});">Wróć
                </button>
            </td>
        </tr>
    </#list>
</table>
<form id="new-gift-form" class="form-horizontal" method="POST" autocomplete="off">
    <fieldset>
        <!-- Form Name -->
        <legend>Nowy wpis</legend>

        <div class="col-md-8 col-md-offset-2">
            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-2 control-label" for="name">Nazwa</label>
                <div class="col-md-10">
                    <input id="name" name="name" type="text" placeholder="Tu wpisz nazwę" class="form-control input-md" required="">

                </div>
            </div>

            <!-- Textarea -->
            <div class="form-group">
                <label class="col-md-2 control-label" for="description">Opis</label>
                <div class="col-md-10">
                    <textarea class="form-control" id="description" name="description" required="" placeholder="Tu wpisz opis"></textarea>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-2 control-label" for="link">Link</label>
                <div class="col-md-10">
                    <input id="link" name="link" type="text" placeholder="Tutaj możesz dodać link do przykładowego prezentu" class="form-control input-md" pattern="https?://.+"
                           oninvalid="setCustomValidity('W linku musi być nazwa protokołu: http:// lub https:// Poprawny link to na przykład: http://www.google.pl, a nie www.google.pl')"
                           oninput="setCustomValidity('')" >
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
    $('#new-gift-form').submit(function (event) {
        event.preventDefault();
        $.ajax({
            url: "/add-gift.html",
            data: $(this).serialize(),
            method: 'POST',
            success: function (data) {
                $('#admin-tab').html(data);
            }
        });
    });
</script>