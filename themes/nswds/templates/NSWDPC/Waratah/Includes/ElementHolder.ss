<% if $Parent.RenderElementDirectly %>

    <%-- elements that can render directly, parent is an ElementalArea --%>

    <% if $Parent.IsSideArea %>
        <%-- sidebar elements can have spacing --%>
        <div class="nsw-block<% if $SpacingClass %> $SpacingClass<% end_if %><% if $IsBoxed %> nsw-section--box<% end_if %><% if $VerticalSpacing %> nsw-section--{$VerticalSpacing}<% end_if %>" id="{$Anchor}" data-direct="1" data-side="1">
        {$Element}
        </div>
    <% else %>
        <%-- top element --%>
        <div data-direct="1" data-side="0">
        {$Element}
        </div>
    <% end_if %>

<% else_if $CurrentPage.IsLandingPage || $Parent.OwnerPage.IsLandingPage %>

    <%-- note:landing pages / home pages never render a sidebar element area, these are all the main elements --%>
    <section class="<% if $Background %>{$Background}<% end_if %><% if $VerticalSpacing %> nsw-section--{$VerticalSpacing}<% end_if %><% if $StyleVariant %> {$StyleVariant}<% end_if %><% if $ExtraClass %> {$ExtraClass}<% end_if %>" id="{$Anchor}" data-type="{$ElementShortName}">

        <%-- landing page elements can have containers and backgrounds --%>
        <div class="<% if $AddContainer %>nsw-container<% else %>nsw-container wrth-container-fluid<% end_if %>">
            {$Element}
        </div>

    </section>

<% else %>

    <%-- any element not rendered directly,  not in a landing page --%>
    <section class="nsw-section<% if $IsBoxed %> nsw-section--box<% end_if %><% if $VerticalSpacing %> nsw-section--{$VerticalSpacing}<% end_if %><% if $SpacingClass %> $SpacingClass<% end_if %><% if $StyleVariant %> $StyleVariant<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %>" id="{$Anchor}" data-type="{$ElementShortName}" data-page-type="2">
        {$Element}
    </section>

<% end_if %>
