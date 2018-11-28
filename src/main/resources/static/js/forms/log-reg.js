function fillLoginForm(status) {
    if (status === "success") {
        $('#login-form-email').val(data.user.email);
        $('#login-form-password').val(data.user.password);
    }
}

/* Send ajax request to register user on submit */

$('#register-form').submit(function () {

    $.ajax({
        type: "POST",
        dataType: "json",
        data: {
            "username": $('#register-form-name').val(),
            "email": $('#register-form-email').val(),
            "password": $('#register-form-password').val()
        },
        url: window.location + "registration",
        success: function (data) {
            showAlertBox(data.status, data.icon, data.message);
            fillLoginForm(data.status);
        },
        error: function (jqXHR, textStatus) {
            showAlertBox(alertStatusBad, alertIconBad, badRequest(jqXHR.status, textStatus));
        }
    });

    return false
});


