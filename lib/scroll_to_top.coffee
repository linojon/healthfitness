# scroll to top of page hack https://github.com/tmeasday/meteor-router/issues/71
Router._filters = {
  resetScroll: ->
    scrollTo = window.currentScroll || 0
    $('body').scrollTop(scrollTo)
    $('body').css("min-height", 0)
}
filters = Router._filters

if Meteor.isClient
  Router.onAfterAction filters.resetScroll # for all pages

