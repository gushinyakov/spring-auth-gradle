
<#macro login>

    <form id="login-form" name="login-form" class="nobottommargin" action="/login" method="post">

        <h3>Login to your Account</h3>

        <div class="col_full">
            <label for="login-form-email">Username:</label>
            <input type="text" id="login-form-email" name="username" value="" class="form-control" />
        </div>

        <div class="col_full">
            <label for="login-form-password">Password:</label>
            <input type="password" id="login-form-password" name="password" value="" class="form-control" />
        </div>

        <div class="col_full nobottommargin">
            <button class="button button-3d nomargin" type="submit" id="login-form-submit" name="login-form-submit" value="login">Login</button>
            <a href="#" class="fright">Forgot Password?</a>
        </div>

    </form>

</#macro>

<#macro register>

    <form id="register-form" name="register-form" class="nobottommargin" action="/registration" method="post">

        <div class="col_half">
            <label for="register-form-name">Name:</label>
            <input type="text" id="register-form-name" name="register-form-name" value="" class="form-control" />
        </div>

        <div class="col_half col_last">
            <label for="register-form-email">Email Address:</label>
            <input type="email" id="register-form-email" name="register-form-email" value="" class="form-control" />
        </div>

        <div class="clear"></div>

        <div class="col_half">
            <label for="register-form-password">Choose Password:</label>
            <input type="password" id="register-form-password" name="register-form-password" value="" class="form-control" />
        </div>

        <div class="clear"></div>

        <div class="col_half nobottommargin">
            <button class="button button-3d button-black nomargin" id="register-form-submit" name="register-form-submit" value="register">Register Now</button>
        </div>

    </form>

</#macro>

<#macro logout>
    <div>
        <form action="/logout" method="post">
            <input type="submit" value="Sign Out"/>
        </form>
    </div>
</#macro>

<#macro addTag>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Введите сообщение" />
            <input type="text" name="tag" placeholder="Тэг">
            <button type="submit">Добавить</button>
        </form>
    </div>
</#macro>

<#macro filter>
    <form method="get" action="/main">
        <input type="text" name="filter">
        <button type="submit">Найти</button>
    </form>
</#macro>