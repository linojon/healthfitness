Router.configure(
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound',
  # waitOn: -> []
)

Router.map -> 
  this.route 'home', {path: '/'}

requireLogin = (pause) ->
  if !Meteor.user()
    if Meteor.loggingIn()
      this.render this.loadingTemplate
    else
      this.render 'accessDenied'
    pause()

# Router.onBeforeAction 'loading'
# Router.onBeforeAction requireLogin, {only: 'talkSubmit'}
# Router.onBeforeAction -> clearErrors()

