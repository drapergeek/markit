module.exports = App.BookmarkController = Ember.ObjectController.extend
  baseUrl: (->
    domainRegex = /http:\/\/\w+\.(com|net|org)/
    domainRegex?.exec(@get('url'))?[0]
  ).property('url')

  favicon: (->
    "#{@get('baseUrl')}/favicon.ico"
  ).property('baseUrl')
