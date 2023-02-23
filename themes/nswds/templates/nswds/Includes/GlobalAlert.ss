<% if $GlobalSpecialAnnouncements %>

    <% loop $GlobalSpecialAnnouncements %>

    <div class="nsw-sitewide-message<% if $AlertState=='critical' %> nsw-sitewide-message--critical<% else_if $AlertState=='light' %> nsw-sitewide-message--light<% end_if %> js-sitewide-message" role="alert">

        <div class="nsw-sitewide-message__wrapper">

            <div class="nsw-sitewide-message__content">
                <h2 class="nsw-sitewide-message__title">{$Title.XML}</h2>
                {$Content}
                <% if $Link && not $UseButtonLink %>
                    <a href="{$Link.URL}" class="nsw-sitewide-message__link" <% if $Link.OpenInNewWindow %>target="_blank"<% end_if %>><% if $Link.Title %>{$Link.Title}<% else %><%t nswds.MORE_INFORMATION 'More information' %><% end_if %></a>
                <% end_if %>
            </div>

            <% if $LinkURL %>
                <% if $UseButtonLink %>
                    <% if $ButtonTitle %>
                        <% include nswds/Button Button_LinkURL=$LinkURL, Button_Title=$ButtonTitle %>
                    <% else %>
                        <% include nswds/Button Button_LinkURL=$LinkURL, Button_Title='More information' %>
                    <% end_if %>
                <% end_if %>
            <% end_if %>

            <button type="button" class="nsw-sitewide-message__close">
                <% include nswds/Icon Icon_Icon='close' %>
                <span class="sr-only">Close message</span>
            </button>

        </div>

        <% if $SchemaJSON %>
        <script type="application/ld+json">
            $SchemaJSON.RAW
        </script>
        <% end_if %>


    </div>

    <% end_loop %>

<% end_if %>
