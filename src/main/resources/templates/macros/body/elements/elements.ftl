<#macro body>
    <body class="stretched">
        <div id="wrapper" class="clearfix">
            <#nested>
        </div>
    </body>
</#macro>

<#macro header>
		<header id="header" class="full-header">
			<div id="header-wrap">
				<div class="container clearfix">

					<!-- Logo
					============================================= -->
					<div id="logo">
                        <a class="standard-logo"><img src="/static/images/analytical.png" alt="Analytical Sence Logo"></a>
                    </div><!-- #logo end -->

                </div>
            </div>
        </header>
</#macro>

<#macro pageTitle title>
    <section id="page-title">
        <div class="container clearfix">
            <h1>${title}</h1>
        </div>
    </section><!-- #page-title end -->
</#macro>

<#macro container>
    <section id="content">
        <div class="content-wrap">
            <div id="alert-box"></div>
            <#nested>
        </div>
    </section>
</#macro>



