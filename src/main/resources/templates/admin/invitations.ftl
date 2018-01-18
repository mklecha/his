<table class="table">
    <tr>
        <th width="10%">Id</th>
        <th width="20%">Link</th>
        <th width="50%">Opis</th>
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