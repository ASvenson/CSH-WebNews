$('#ajax_error').remove()

selected = $('#groups_list .selected').attr('data-name')
$('#groups_list nav').html('<%= j render('newsgroups/index') %>')
$('#groups_list [data-name="' + selected + '"]').addClass('selected')

unread_in_loaded = parseInt(
  $('#groups_list [data-name="' + window.loaded_location + '"]').attr('data-unread'))
new_in_loaded = unread_in_loaded - $('#posts_list .unread').length
if new_in_loaded > 0 and not window.active_scroll_load and $('#posts_load_newer').length == 0
  posts = if new_in_loaded == 1 then 'post' else 'posts'
  $('#group_view .new_posts').text(new_in_loaded + ' new ' + posts + ' in this group!')
else
  $('#group_view .new_posts').text('')

$('#next_unread').attr('href', '<%= next_unread_href %>')

<% if @dashboard_active %>
if location.hash.match '#!/home'
  document.title = '<%= j home_page_title %>'
  scroll = $('#dashboard').scrollTop()
  $('#group_view').html '<%= j render('dashboard') %>'
  $('#dashboard').scrollTop(scroll)
  $('#dashboard').focus()
<% end %>

$('#sync_warning').remove()
<% if @show_sync_warning %>
$('#groups_list h2').after('<%= j render("shared/sync_warning") %>')
<% end %>

window.active_check_new = false
set_check_timeout()
