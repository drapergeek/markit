module.exports = App.BookmarksNewRoute = Ember.Route.extend
  model: -> @store.createRecord('bookmark')

  actions:
    willTransition: (transition) ->
      if @currentModel.get('isNew')
        @currentModel.destroyRecord()

    save: ->
      @currentModel.save()
      @transitionTo('bookmarks.bookmark', @currentModel)
