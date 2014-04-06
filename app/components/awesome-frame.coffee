module.exports = App.AwesomeFrameComponent = Ember.Component.extend
  actions:
    reset: ->
      @$("iframe").prop('src', @get('url'))
