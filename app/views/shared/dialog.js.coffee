open_dialog('<%= j render(controller.action_name) %>')
switch '<%= j raw(controller.controller_name + '/' + controller.action_name) %>'
  when 'posts/search_entry'
    $('input[name="keywords"]').focus()
  when 'posts/new'
    if $('#post_body').val() != ''
      $('#post_body').putCursorAtEnd()
    else
      $('#overlay').focus()
    set_draft_interval()
  else
    $('#overlay').focus()
