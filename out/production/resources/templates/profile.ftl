<#import "macros/header/head.ftl" as head>
<#import "macros/body/elements/elements.ftl" as elements>
<#import "macros/body/elements/scripts.ftl" as scripts>

<#-- Header -->
<@head.header title="Enter page">
    <link rel="stylesheet" href="/static/css/profile.css" type="text/css">

    <!-- Radio Checkbox Plugin -->
	<link rel="stylesheet" href="/static/css/radio-checkbox.css" type="text/css" />
</@head.header>

<#-- Body -->
<@elements.body>

    <#-- Header -->
    <@elements.header></@elements.header>

    <#-- Page Title -->
    <@elements.pageTitle title="Profile"></@elements.pageTitle>

    <#-- Container -->
    <@elements.container>

        <div class="container clearfix">

        <div class="row clearfix">

            <div class="col-sm-9">

                <img src="/static/images/avatar.jpg" class="alignleft img-circle img-thumbnail notopmargin nobottommargin" alt="Avatar" style="max-width: 84px;">

                <div class="heading-block noborder">
                    <h3>SemiColonWeb</h3>
                    <span>Your Profile Bio</span>
                </div>

                <div class="clear"></div>

                <div class="row clearfix">

                    <div class="col-md-12">

                        <div class="col-md-3" id="query-filters">
                            <div class="list-group">
                                <a href="#" class="list-group-item noborder tright clearfix">Red <i class="icon-circle leftmargin-sm pull-right" style="color:#e74c3c"></i></a>
                                <a href="#" class="list-group-item noborder tright clearfix">Yellow <i class="icon-circle leftmargin-sm pull-right" style="color:#f1c40f"></i></a>
                                <a href="#" class="list-group-item noborder tright clearfix">Orange <i class="icon-circle leftmargin-sm pull-right" style="color:#FF8300"></i></a>
                                <a href="#" class="list-group-item noborder tright clearfix">Green <i class="icon-circle leftmargin-sm pull-right" style="color:#6B8E23"></i></a>
                                <a href="#" class="list-group-item noborder tright clearfix">Purple <i class="icon-circle leftmargin-sm pull-right" style="color:#913D88"></i></a>
                            </div>
                        </div>

                        <div class="col-md-9" id="user-queries">

                            <div class="fancy-title title-center">
                                <h1>Add queries</h1>
                            </div>

                            <div id="add-query">
                                <form id="add-query-form" name="add-query-form" class="nobottommargin" action="/profile/addQuery" method="post">

                                    <div class="col-md-10">
                                        <label for="add-query-text">Query:</label>
                                        <input type="text" id="add-query-text" name="query" value="" class="form-control" />
                                    </div>

                                    <div class="col-md-2 nobottommargin">
                                        <button class="button button-3d nomargin" type="submit" id="add-query-form-submit" name="add-query-form-submit" >Add</button>
                                    </div>

                                </form>

                            </div>

                            <div class="clear"></div>

                            <div id="query-commands">
                                <a href="#" id="query-commands-select-all" class="button button-circle button-small">Select all</a>
                                <a href="#" id="query-commands-delete" class="button button-circle button-small">Delete</a>
                                <a href="#" id="query-commands-delete-all" class="button button-circle button-small">Delete all</a>
                            </div>

                            <div class="clear"></div>

                            <div class="col-md-10 list-queries-container">

                                <div id="list-queries">
                                    <div class="list-group" id="list-queries-group">

                                    </div>
                                </div>

                                <#-- Pagination -->
                                <div class="pagination-container topmargin nobottommargin">
                                    <ul class="pagination nomargin"></ul>
                                </div>

                            </div>

                        </div>


                    </div>

                </div>

            </div>

            <div class="line visible-xs-block"></div>

            <div class="col-sm-3 clearfix">

                <div class="list-group">
                    <a href="#" class="list-group-item clearfix">Profile <i class="icon-user pull-right"></i></a>
                    <a href="#" class="list-group-item clearfix">Servers <i class="icon-laptop2 pull-right"></i></a>
                    <a href="#" class="list-group-item clearfix">Messages <i class="icon-envelope2 pull-right"></i></a>
                    <a href="#" class="list-group-item clearfix">Billing <i class="icon-credit-cards pull-right"></i></a>
                    <a href="#" class="list-group-item clearfix">Settings <i class="icon-cog pull-right"></i></a>
                    <a href="#" class="list-group-item clearfix">Logout <i class="icon-line2-logout pull-right"></i></a>
                </div>

                <div class="fancy-title topmargin title-border">
                    <h4>About Me</h4>
                </div>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum laboriosam, dignissimos veniam obcaecati. Quasi eaque, odio assumenda porro explicabo laborum!</p>

                <div class="fancy-title topmargin title-border">
                    <h4>Social Profiles</h4>
                </div>

                <a href="#" class="social-icon si-facebook si-small si-rounded si-light" title="Facebook">
                    <i class="icon-facebook"></i>
                    <i class="icon-facebook"></i>
                </a>

                <a href="#" class="social-icon si-gplus si-small si-rounded si-light" title="Google+">
                    <i class="icon-gplus"></i>
                    <i class="icon-gplus"></i>
                </a>

                <a href="#" class="social-icon si-dribbble si-small si-rounded si-light" title="Dribbble">
                    <i class="icon-dribbble"></i>
                    <i class="icon-dribbble"></i>
                </a>

                <a href="#" class="social-icon si-flickr si-small si-rounded si-light" title="Flickr">
                    <i class="icon-flickr"></i>
                    <i class="icon-flickr"></i>
                </a>

                <a href="#" class="social-icon si-linkedin si-small si-rounded si-light" title="LinkedIn">
                    <i class="icon-linkedin"></i>
                    <i class="icon-linkedin"></i>
                </a>

                <a href="#" class="social-icon si-twitter si-small si-rounded si-light" title="Twitter">
                    <i class="icon-twitter"></i>
                    <i class="icon-twitter"></i>
                </a>

            </div>

        </div>

    </div>

    </@elements.container>

    <@scripts.scripts></@scripts.scripts>


    <script type="text/javascript" src="/static/js/profile-query.js"></script>
    <script type="text/javascript" src="/static/js/profile-query-consts.js"></script>


</@elements.body>