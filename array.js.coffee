
Array::move = (old_index, new_index) ->
  if new_index >= @length
    k = new_index - @length
    while k-- + 1
      @push undefined
  @splice new_index, 0, @splice(old_index, 1)[0]
  this

Array::remove = (item) ->
  index = undefined
  index = _.indexOf(this, item)
  if index != -1
    @splice index, 1
  this
