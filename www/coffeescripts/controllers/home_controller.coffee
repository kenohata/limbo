define ["chaplin"], (Chaplin) ->
  class HomeController extends Chaplin.Controller
    index: ->
      console.log "index"
