Webnews.PostsView = Ember.View.extend
  attributeBindings: ['id', 'tabindex']
  id: 'posts_list'
  tabindex: '-1'
  contentBufferHeight: 600

  didInsertElement: ->
    @$().on 'scroll', =>
      viewHeight = @$().height()
      contentHeight = @$().prop('scrollHeight')
      scrollTop = @$().scrollTop()

      if scrollTop < @contentBufferHeight
        @get('controller').send('loadNewerPosts')

      if scrollTop + viewHeight > contentHeight - @contentBufferHeight
        @get('controller').send('loadOlderPosts')

    @$().trigger('scroll')

  willDestroyElement: ->
    @$().off('scroll')
