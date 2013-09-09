# http://emberjs.com/guides/models/defining-a-store/

Pah.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()

# Pah.Store.registerAdapter('Pah.Songs', DS.RESTAdapter.extend({
#   url: "/songssss"
# }));
