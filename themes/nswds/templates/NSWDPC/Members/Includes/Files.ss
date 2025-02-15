<% include NSWDPC/Members/ContainerStart %>

                <% if $Member %>

                    <% if $ProfileFolders %>

                        <% include nswds/InPageNotification InPageNotification_Level='info', InPageNotification_Icon='article', InPageNotification_Title='Information', InPageNotification_Content='You have access to the following assets on this website' %>

                        <% loop $ProfileFolders %>

                            <div class="nsw-block">

                                <h3>{$NiceTitle.XML}</h3>

                            <% if $DownloadableFiles %>

                                <div class="nsw-block">
                                <% loop $DownloadableFiles %>

                                    <% if $IsImage %>

                                        <% include nswds/ListItem ListItem_PrimaryLabel=$AppCategory.UpperCase, ListItem_IsReversed=0, ListItem_Date=$LastEdited, ListItem_DateTime='', ListItem_LinkURL=$Link, ListItem_Title=$Title, ListItem_Abstract='', ListItem_Tags='', ListItem_Image=$Me  %>

                                    <% else %>

                                        <% include nswds/ListItem ListItem_PrimaryLabel=$AppCategory.UpperCase, ListItem_IsReversed=0, ListItem_Date=$LastEdited, ListItem_DateTime='', ListItem_LinkURL=$Link, ListItem_Title=$Title, ListItem_Abstract='', ListItem_Tags=''  %>

                                    <% end_if %>

                                <% end_loop %>
                                </div>

                            <% else %>

                                <p>No files are available in this folder</p>

                            <% end_if %>

                            </div>

                        <% end_loop %>

                    <% else %>

                        <% include nswds/InPageNotification InPageNotification_Level='info', InPageNotification_Icon='article', InPageNotification_Title='Information', InPageNotification_Content='Nothing is available here, at the moment' %>

                    <% end_if %>

                <% else %>
                    <% include nswds/InPageNotification InPageNotification_Level='warning', InPageNotification_Icon='warning', InPageNotification_Title='Information', InPageNotification_Content='Access denied' %>
                <% end_if %>

<% include NSWDPC/Members/ContainerEnd %>
