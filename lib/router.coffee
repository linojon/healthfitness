Router.configure(
  layoutTemplate: 'application'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound',
  # waitOn: -> []
)

Router.map -> 
  this.route 'home', {
    path: '/',
    layoutTemplate: 'hero_layout'
  }

  this.route 'about', {
    path: '/about'
  }

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

