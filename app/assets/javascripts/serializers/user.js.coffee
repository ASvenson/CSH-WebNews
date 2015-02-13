Webnews.UserSerializer = DS.ActiveModelSerializer.extend
  normalizeHash:
    user: (hash) ->
      hash.id = 'current'
      hash
