Webnews.Router.map ->
  @route 'newsgroup', path: 'news/:newsgroup_id', ->
    @route 'post', path: ':post_id'
