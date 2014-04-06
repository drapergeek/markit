module.exports = App.Router.map ->
  @resource 'bookmarks', ->
    @route 'new'
    @route 'bookmark', path: '/:bookmark_id'
