module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      compile:
        options:
          sourceMap: true
        expand: true
        cwd: 'coffeescripts/'
        src: ['*.coffee']
        dest: 'angular/javascripts/'
        ext: '.js'
    sass:
      compile:
        expand: true
        cwd: 'sass/'
        src: ['*.sass']
        dest: 'angular/stylesheets/'
        ext: '.css'
    jade:
      compile:
        expand: true
        cwd: 'jade/'
        src: ['**/*.jade']
        dest: 'angular/'
        ext: '.html'


  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-sass'

  grunt.registerTask 'default', [ 'coffee', 'sass', 'jade' ]
