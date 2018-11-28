<#import "macros/header/head.ftl" as head>
<#import "macros/body/elements/elements.ftl" as elements>
<#import "macros/body/elements/scripts.ftl" as scripts>
<#import "macros/body/forms/forms.ftl" as forms>

<#-- Header -->
<@head.header title="Enter page">
    <link rel="stylesheet" href="/static/css/index-page.css" type="text/css">
</@head.header>

<#-- Body -->
<@elements.body>

    <#-- Header -->
    <@elements.header></@elements.header>

    <#-- Page Title -->
    <@elements.pageTitle title="My account"></@elements.pageTitle>

    <#-- Container -->
    <@elements.container>

        <div class="container clearfix">

            <div class="col_one_third nobottommargin">
                <div class="well well-lg nobottommargin">

                    <#-- Login Form -->
                    <@forms.login></@forms.login>

                </div>
            </div>

            <div class="col_two_third col_last nobottommargin" style="margin-top: 25px">
                <h3>Don't have an Account? Register Now.</h3>

                <#-- Registration form -->
                <@forms.register></@forms.register>

            </div>

        </div>

    </@elements.container>

    <@scripts.scripts></@scripts.scripts>

    <script type="text/javascript" src="/static/js/forms/log-reg.js"></script>

</@elements.body>