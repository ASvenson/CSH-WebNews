Webnews.PostsController = Ember.ArrayController.extend
  sortProperties: ['createdAt']
  sortAscending: false
  loadingNewerPosts: false
  loadingOlderPosts: false
  reachedNewestPost: false
  reachedOldestPost: false
  limit: 10
  olderOffset: 0
  newerOffset: 0

  model: Ember.A()

  actions:
    loadNewerPosts: ->
      return if @get('loadingNewerPosts')
      @set('loadingNewerPosts', true)
      @get('target').send('loadNewerPosts', this,
        limit: @get('limit'), offset: @get('newerOffset'))

    loadOlderPosts: ->
      return if @get('loadingOlderPosts')
      @set('loadingOlderPosts', true)
      @get('target').send('loadOlderPosts', this,
        limit: @get('limit'), offset: @get('olderOffset'))

    loadedNewerPosts: (posts, metadata) ->
      undefined

    loadedOlderPosts: (posts, metadata) ->
      @pushObjects(posts)

      if @get('olderOffset') + @get('limit') >= metadata.total
        @set('reachedOldestPost', true)
        @set('olderOffset', metadata.total)
      else
        @incrementProperty('olderOffset', @get('limit'))

      @set('loadingOlderPosts', false)
