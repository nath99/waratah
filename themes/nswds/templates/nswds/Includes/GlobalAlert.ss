<% if $GlobalSpecialAnnouncements %>

    <% loop $GlobalSpecialAnnouncements %>

    <div class="nsw-global-alert<% if $AlertState=='critical' %> nsw-global-alert--critical<% else_if $AlertState=='light' %> nsw-global-alert--light<% end_if %> js-global-alert" role="alert">

        <div class="nsw-global-alert__wrapper">

            <div class="nsw-global-alert__content">
                <h2 class="nsw-global-alert__title">{$Title.XML}</h2>
                {$Content}
                <% if $Link && not $UseButtonLink %>
                    {$Link}
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

            <button type="button" class="nsw-icon-button js-close-alert" type="button" aria-expanded="true">
                <% include nswds/Icon Icon_Icon='close' %>
                <span class="sr-only"><%t nswds.CLOSE_MESSAGE 'Close message' %></span>
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
