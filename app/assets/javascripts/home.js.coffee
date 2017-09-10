# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $button =

  # Call validation for Modal window on click & stripePay function
  $('.name-sort').on 'click', ->
    $names = $(@).parent().prev().find('.names')
    $names.text(sortNames($names).join(', '))

  sortNames = (names) ->
    array = names.text().split(', ')
    array.sort (a, b) ->
      if a < b
        return -1
      if a > b || a == b
        return 1
      return
