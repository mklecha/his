<div class="col-sm-4 col-md-3 gift-title">
    ${gift.name}
</div>
<div class="col-sm-7 col-md-7 gift-descr">
    ${gift.description}<br/>
    <#if gift.link?has_content> <a href="${gift.link}" target="_blank"><u>Przykład tutaj</u></a> </#if>
</div>
<div class="col-md-2 col-md-offset-0 col-sm-4 col-sm-offset-4 gift-descr">
    <#if !gift.reserved>
        <button class="btn btn-primary" style="width: 100%" onclick="reserveGift(${gift.id})">Zarezerwuj</button>
    </#if>
</div>
<#if gift.reserved>
    <div class="gift-reserved">ZAREZERWOWANE</div>
</#if>