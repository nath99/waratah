<fieldset class="nsw-form-fieldset<% if $Zebra %> $Zebra<% end_if %>" id="$HolderID">

    <% if $Legend %>
        <legend><span class="nsw-form-legend-text">$Legend</span></legend>
    <% else_if $Title %>
        <legend><span class="nsw-form-legend-text">$Title</span></legend>
    <% end_if %>

    $Field

</fieldset>