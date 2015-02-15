Ember.Handlebars.helper 'avatar', (email, size) ->
  email ||= 'nobody@example.com'
  emailHash = md5(email.replace(/\s+/g, '').toLowerCase())
  urlParams = "size=#{size}&default=mm&rating=pg"
  new Ember.Handlebars.SafeString("<img
    src='https://secure.gravatar.com/avatar/#{emailHash}?#{urlParams}'
    alt=''
    class='gravatar'
    width='#{size}'
    height='#{size}'
  >")
