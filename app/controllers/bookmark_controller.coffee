module.exports = App.BookmarkController = Ember.ObjectController.extend
  domain: (->
    domainRegex = /\w+\.(com|net|org)/
    domainRegex?.exec(@get('url'))?[0]?.split('.')?[0]
  ).property('url')
