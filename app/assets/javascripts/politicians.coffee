# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ready turbolinks:load', ->
# Check for click events on the navbar burger icon
  $('.navbar-burger').click ->
# Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
    $('.navbar-burger').toggleClass 'is-active'
    $('.navbar-menu').toggleClass 'is-active'
    return
  return
