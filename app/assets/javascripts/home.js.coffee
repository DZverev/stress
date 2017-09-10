# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.name-sort').on 'click', ->
    $names = $(@).parent().prev().find('.names')
    $names.text(sortNames($names).join(', '))

  $('.number-of-articles-sort').on 'click', ->
    $names = $(@).parent().prev().find('.names')
    $.ajax
      url: '/articles/' + $(@).data('article-id') + '/authors'
      dataType: 'json'
      success: ( data )->
        data = data['authors']
        threeAuthors = data.slice(0, 3).join(', ')
        result = threeAuthors
        if data.length > 3
          result = result + '<span class="other-authors"> and ' + (data.length - 3) + ' others authors</span>'
        $names.html(result)
      error: (err) ->
        console.log(err)

  sortNames = ($names) ->
    $names.find('.other-authors').empty()
    array = $names.text().split(', ')
    array.sort (a, b) ->
      if a < b
        return -1
      if a > b || a == b
        return 1
      return
