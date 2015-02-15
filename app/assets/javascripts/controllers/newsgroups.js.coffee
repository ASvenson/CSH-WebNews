Webnews.NewsgroupsController = Ember.ArrayController.extend
  sortProperties: ['name']

  syncIsStale: Ember.computed 'meta', ->
    moment().diff(@get('meta.last_sync_at'), 'minutes') > 1
  syncTimeAgo: Ember.computed 'meta', ->
    moment(@get('meta.last_sync_at')).fromNow()

  writableGroups: Ember.computed.filterBy('arrangedContent', 'postingAllowed', true)
  readOnlyGroups: Ember.computed.filter 'arrangedContent', (newsgroup) ->
    not newsgroup.get('postingAllowed') and not newsgroup.get('isControl')
  controlGroups: Ember.computed.filterBy('arrangedContent', 'isControl', true)

  newsgroupGroups: Ember.computed ->
    [@get('writableGroups'), @get('readOnlyGroups'), @get('controlGroups')]
