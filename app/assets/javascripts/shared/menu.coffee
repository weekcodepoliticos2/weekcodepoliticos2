$(document).ready ->
# Check for click events on the navbar burger icon
  $('.navbar-burger').click ->
# Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
    $('.navbar-burger').toggleClass 'is-active'
    $('.navbar-menu').toggleClass 'is-active'
    return
  return
