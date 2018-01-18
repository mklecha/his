<table class="table">
    <tr>
        <th width="5%">Id</th>
        <th width="15%">Nazwa</th>
        <th width="10%">Link</th>
        <th width="45%">Opis</th>
        <th width="10%"></th>
        <th width="15%"></th>
    </tr>
    <#list gifts as gift>
        <tr>
            <td>${gift.id?c}</td>
            <td>${gift.name}</td>
            <td>${gift.link}</td>
            <td>${gift.description}</td>
            <td></td>
            <td></td>
        </tr>
    </#list>
</table>