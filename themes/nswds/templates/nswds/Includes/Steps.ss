<div class="nsw-steps<% if $HeadingSize == 3 %> nsw-steps--medium<% end_if %><% if $HeadingSize == 4 %> nsw-steps--small<% end_if %><% if $Steps_Brand %> nsw-steps--{$Steps_Brand.XML}<% end_if %><% if $Steps_Fill %> nsw-steps--fill<% end_if %><% if $Steps_Counters %> nsw-steps--counters<% end_if %>">

<% loop $Steps_Items %>
  <div class="nsw-steps__item<% if $IsCurrentStep %> nsw-steps__item--fill<% end_if %>">
    <div class="nsw-steps__content">
      <h<% if $HeadingSize %>{$HeadingSize.XML}><% else %>2<% end_if %>>{$Title.XML}</h<% if $HeadingSize %>{$HeadingSize.XML}><% else %>2<% end_if %>>
      <p>{$Abstract.XML}</p>
    </div>
  </div>
<% end_loop %>

</div>
