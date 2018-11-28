/* PRE-LOADER
============================================= */

function showPreloder(container) {
    container.html(preloader);
}

const preloader = `
    <div class="col-md-3 col-sm-4 col-xs-6" style="height: 150px;">
        <div class="css3-spinner" style="position: absolute; z-index:auto;">
            <div class="css3-spinner-rect1"></div>
                <div class="css3-spinner-rect2"></div>
                <div class="css3-spinner-rect3"></div>
                <div class="css3-spinner-rect4"></div>
                <div class="css3-spinner-rect5"></div>
            </div>
        </div>
    </div>`;


/* AlERT BOX
============================================= */

function showAlertBox(status, icon, message) {
    alertBox.html(
        `<div class="alert alert-${status}">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <i class="${icon}"></i>${message}
        </div>`);
}

const alertBox = $('#alert-box');

/* AJAX
============================================= */

const badRequest = (status, text) =>
    `<strong>Bad request!</strong><br>
     Our specialists are already working on the problem<br>
     <b>Status code:</b> ${status} <br>
     <b>Text status:</b> ${text}`;

const alertStatusBad = "danger";
const alertIconBad = "icon-remove-sign";



