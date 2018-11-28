
/* SHOW QUERIES ON LOAD
============================================= */
$(window).load(function () {

    showPreloder(listQueriesGroup);

    $.ajax({
        type: "POST",
        dataType: "json",
        url: window.location + "/showQuery",
        success: function (data) {
            showQueriesList(data)
        },
        error: function (jqXHR, textStatus) {
            showAlertBox(alertStatusBad, alertIconBad, badRequest(jqXHR.status, textStatus));
        }
    });

    $('.list-queries-container').pajinate({
        items_per_page : 5,
        item_container_id : '#list-queries-group',
        nav_panel_id : '.pagination-container ul',
        show_first_last: false
    });

    $( '.pagination a' ).click(function() {
        var t=setTimeout(function(){ $( '.flexslider .slide' ).resize(); },1000);
    });

});


/* ADD COMMAND
============================================= */

function showQueriesList(data) {

    listQueriesGroup.empty();

    $.each(JSON.parse(data["queries"]), function (id, value) {
        listQueriesGroup.append(generateListGroupItemQuery(value.id, value.text, value.tag))
    });
}

$('#add-query-form').submit(function () {

    showPreloder(listQueriesGroup);

    $.ajax({
        type: "POST",
        dataType: "json",
        data: { "query" : $('#add-query-text').val() },
        url: window.location + "/addQuery",
        success: function (data) {
            showQueriesList(data)
        },
        error: function (jqXHR, textStatus) {
            showAlertBox(alertStatusBad, alertIconBad, badRequest(jqXHR.status, textStatus));
        }
    });

    return false
});


/* DELETE COMMAND
============================================= */

$('#query-commands-delete').click(function () {

    let queriesDelete = [];
    $('#list-queries .list-group-item').each(function () {
        let item = $(this);
        if (item.children('#checkbox-' + item.attr(dataQueryId)).prop("checked") === true){
            queriesDelete.push(item.attr(dataQueryId));
        }
    });

    if (queriesDelete.length > 0) {
        $.ajax({
            type: "POST",
            dataType: "json",
            data: {"jsonListId" : JSON.stringify(queriesDelete) },
            url: window.location + "/deleteById",
            success: function (data) {
                showQueriesList(data)
            },
            error: function (jqXHR, textStatus) {
                showAlertBox(alertStatusBad, alertIconBad, badRequest(jqXHR.status, textStatus))
            }
        });

    }
    return false
});


/* SELECT ALL COMMAND
============================================= */

$('#query-commands-select-all').click(function () {
    $('#list-queries .list-group-item').each(function () {
        let item = $(this);
        if (item.children('#checkbox-' + item.attr(dataQueryId)).prop("checked") === false){
            item.children('#checkbox-' + item.attr(dataQueryId)).prop("checked", true);
        }
    });

    return false
});



/* QUERY LIST PAGINATION
============================================= */

/*
jQuery(document).ready(function($){

    $('.list-queries-container').pajinate({
        items_per_page : 5,
        item_container_id : '#list-queries-group',
        nav_panel_id : '.pagination-container ul',
        show_first_last: false
    });

    $( '.pagination a' ).click(function() {
        var t=setTimeout(function(){ $( '.flexslider .slide' ).resize(); },1000);
    });

});*/
