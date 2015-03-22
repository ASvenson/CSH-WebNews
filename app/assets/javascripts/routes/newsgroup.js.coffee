Webnews.NewsgroupRoute = Ember.Route.extend
  model: (params) ->
    @controllerFor('newsgroups').get('model').then (newsgroups) ->
      newsgroups.findBy('id', params.newsgroup_id)

  afterModel: ->
    @set('anchorDate', new Date().toISOString())

  resetController: ->
    @controllerFor('posts').get('model').clear()

  actions:
    loadNewerPosts: (controller, params) -> undefined
    loadOlderPosts: (controller, params) ->
      @store.find('post',
        Ember.merge(params,
          newsgroup_ids: @modelFor('newsgroup').get('id')
          until: @get('anchorDate')
        )
      ).then (recordArray) =>
        controller.send(
          'loadedOlderPosts',
          recordArray.get('content'),
          @store.metadataFor('post')
        )
