<% if @sync_error %>
alert('<%= j @sync_error %>')
<% end %>

clear_loaded_location()
location.hash = '#!<%= posts_path(@post.newsgroup.name) %>'
$('#overlay').remove()
