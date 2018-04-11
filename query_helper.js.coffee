window.getQueryVariable = (variable) ->
  query = window.location.search.substring(1)
  vars = query.split("&")
  i = 0

  while i < vars.length
    pair = vars[i].split("=")
    return decodeURIComponent(pair[1])  if decodeURIComponent(pair[0]) is variable
    i++
  return


window.QueryStringToHash = (query) ->
  query_string = {}
  if query
    vars = query.split('&')
    i = 0
    while i < vars.length
      pair = vars[i].split('=')
      pair[0] = decodeURIComponent(pair[0])
      pair[1] = decodeURIComponent(pair[1])
      # If first entry with this name
      if typeof query_string[pair[0]] == 'undefined'
        query_string[pair[0]] = pair[1]
        # If second entry with this name
      else if typeof query_string[pair[0]] == 'string'
        arr = [
          query_string[pair[0]]
          pair[1]
        ]
        query_string[pair[0]] = arr
        # If third or later entry with this name
      else
        query_string[pair[0]].push pair[1]
      i++
  query_string
