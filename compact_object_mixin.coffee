_.mixin compactObject: (o) ->
  #clone = _.clone(o)
  _.each o, (v, k) ->
    if _.isObject(v)
      _.compactObject(v)
    else
      if !v? || ((_.isObject(v) || _.isArray(v)) && _.isEmpty(v))
        delete o[k]
      return
  o
