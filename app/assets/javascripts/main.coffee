# include 'draw.coffee"

ready = ->
  $('#locale').change ->
    $(this).parents('form').submit()

$(document).ready(ready)
$(document).on('page:load', ready)
$(document).on('turbolinks:load', ready)
$(window).load(ready)