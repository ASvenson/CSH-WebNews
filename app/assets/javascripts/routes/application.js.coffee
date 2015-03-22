Webnews.ApplicationRoute = Ember.Route.extend
  beforeModel: ->
    @controllerFor('newsgroups').set('model', @store.find('newsgroup'))
    @controllerFor('newsgroups').set('meta', @store.metadataFor('newsgroup'))
