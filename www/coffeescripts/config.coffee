require.config
  paths:
    jquery: "../bower_components/jquery/dist/jquery"
    underscore: "../bower_components/underscore/underscore"
    backbone: "../bower_components/backbone/backbone"
    chaplin: "../bower_components/chaplin/chaplin"

  shim:
    backbone:
      deps: ["jquery", "underscore"]
      exports: "Backbone"
    chaplin:
      deps: ["backbone"]
      exports: "Chaplin"
