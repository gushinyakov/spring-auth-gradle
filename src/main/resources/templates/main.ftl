<#import "macros/page.ftl" as page>
<#import "macros/forms/log-reg.ftl" as logReg>

<@page.page title="Main page | Spring boot">

    <#-- Form to logout -->
    <@logReg.logout></@logReg.logout>

    <#-- Form to add tag -->
    <@logReg.addTag></@logReg.addTag>

    <div>Список сообщений</div>

    <#-- Form to filter messages -->
    <@logReg.filter></@logReg.filter>

    <#-- List of messages -->
    <#list messages as message>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <#else>
        No message
    </#list>

</@page.page>
