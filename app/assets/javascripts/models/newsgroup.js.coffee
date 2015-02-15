Webnews.Newsgroup = DS.Model.extend Webnews.PersonalClasses,
  name: DS.attr('string')
  description: DS.attr('string')
  postingAllowed: DS.attr('boolean')
  newestPostAt: DS.attr('date')
  oldestPostAt: DS.attr('date')
  unreadCount: DS.attr('number')
  maxUnreadLevel: DS.attr('number')
  isControl: Ember.computed 'name', ->
    /^control/.test(@get('name'))
  personalClass: Ember.computed 'maxUnreadLevel', ->
    @get('personalClasses')[@get('maxUnreadLevel')]
