module.exports = App.BookmarksRoute = Ember.Route.extend
  model: ->
    console.log 'before'
    console.log @store
    @store.find('bookmark')
