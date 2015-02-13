Ember.Handlebars.helper 'icon', (iconName) ->
  escapedName = Handlebars.Utils.escapeExpression(iconName)
  new Ember.Handlebars.SafeString("<i class=\"fa fa-#{escapedName}\"></i>")
