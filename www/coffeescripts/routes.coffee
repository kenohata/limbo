define ["controllers/home_controller"], (HomeController) ->
  (match) ->
    match '', 'home#index'
    match 'tour', 'home#tour'
