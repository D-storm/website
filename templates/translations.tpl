<html xmlns:py="http://genshi.edgewall.org/" xmlns:xi="http://www.w3.org/2001/XInclude" py:strip="">

<py:def function="page_title">Translations</py:def>

<div py:match="content" id="body">
<h2>Translations</h2>

<table class="graph sortable" id="sorttable">
<thead>
<tr>
    <th class="forward_sort">Translation</th>
    <th>Strings</th>
    <th colspan="2">Translated strings percent</th>
    <th>Last modification</th>
</tr>
</thead>

<tbody>
<tr py:for="item in translations">
<td class="name">
<a href="http://wiki.cihar.com/pma/Language/${item.short}">${item.name}</a>
</td>
<td class="size">${item.translated}</td>
<td class="size">${item.percent}%</td>
<td class="bar${item.css}">
<div class="bar" style="width: ${round(float(item.percent))}%;"></div>
</td>
<td class="date">${item.updated}</td>
</tr>
</tbody>
</table>

</div>

<xi:include href="_page.tpl" />
</html>