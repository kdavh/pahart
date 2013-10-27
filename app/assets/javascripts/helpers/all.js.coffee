Ember.Handlebars.helper 'format-markdown', (input) ->
  return new Handlebars.SafeString(showdown.makeHtml(input))
