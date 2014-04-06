module.exports = App.BookmarksRoute = Ember.Route.extend
  model: -> @store.findAll('bookmark')
