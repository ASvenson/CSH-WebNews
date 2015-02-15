Ember.Handlebars.helper 'icon', (iconName) ->
  new Ember.Handlebars.SafeString("<i class='fa fa-#{iconName}'></i>")
