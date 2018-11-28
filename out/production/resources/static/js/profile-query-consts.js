
const generateListGroupItemQuery = (id, text, tag) =>
    `<div class="list-group-item clearfix" ${setDataQueryId(id)} ${setDataQueryTag(tag)}>
        <i class="icon-circle" style="color:#e74c3c"></i>
        <input id="checkbox-${id}" class="checkbox-style" name="checkbox-${id}" type="checkbox">
        <label for="checkbox-${id}" class="checkbox-style-3-label leftmargin-sm checkbox-small">${text}</label>
        <i class="i-plain icon-play leftmargin-sm" style="color: #1ABC9C"></i>
    </div>`;

const dataQueryId = 'data-queryId';
const dataQueryTag = 'data-queryTag';

const setDataQueryId = id => `${dataQueryId}="${id}"`;
const setDataQueryTag = tag => `${dataQueryTag}="${tag}"`;

const listQueriesGroup = $('#list-queries .list-group');