Webnews.ApplicationRoute = Ember.Route.extend
  setupController: (controller) ->
    @controllerFor('newsgroups').set('model', @store.find('newsgroup'))
    @controllerFor('newsgroups').set('meta', @store.metadataFor('newsgroup'))
