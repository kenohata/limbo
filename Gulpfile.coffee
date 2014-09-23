gulp   = require "gulp"
wrap   = require "gulp-wrap-amd"
jade   = require "gulp-jade"
coffee = require "gulp-coffee"
rjs    = require "gulp-requirejs"

gulp.task "coffee", ->
  gulp
  .src "www/coffeescripts/**"
  .pipe coffee bare: true
  .pipe gulp.dest "www/js"

gulp.task "jade", ->
  gulp
  .src "www/templates/**/*.jade"
  .pipe jade client: true
  .pipe wrap deps: []
  .pipe gulp.dest "www/js/templates"

gulp.task "watch", ->
  gulp.watch "www/coffeescripts/**", ["coffee"]
  gulp.watch "www/templates/**", ["jade"]

gulp.task "rjs", ["coffee", "jade"], ->
  rjs
    mainConfigFile: "www/js/config.js"
    baseUrl: "www/js"
    name: "application"
    out: "index.js"
    paths:
      requireLib: "../bower_components/requirejs/require"
    include: ["requireLib"]
  .pipe gulp.dest "www/js"
