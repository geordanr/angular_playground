module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      compile:
        options:
          sourceMap: true
        expand: true
        cwd: 'coffeescripts/'
        src: ['*.coffee']
        dest: 'app/javascripts/'
        ext: '.js'
    sass:
      compile:
        expand: true
        cwd: 'sass/'
        src: ['*.sass']
        dest: 'app/stylesheets/'
        ext: '.css'
    jade:
      compile:
        expand: true
        cwd: 'jade/'
        src: ['**/*.jade']
        dest: 'app/'
        ext: '.html'
    karma:
      test:
        configFile: 'karma.conf.js'
        singleRun: true
        browsers: ['PhantomJS']
    mochaTest:
      test:
        options:
          reporter: 'spec'
          require: [
            'coffee-script/register'
            'tests/mocha/setup'
          ]
        src: [ 'tests/mocha/**/*.coffee' ]


  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-karma'
  grunt.loadNpmTasks 'grunt-mocha-test'

  grunt.registerTask 'default', [ 'coffee', 'sass', 'jade' ]
  grunt.registerTask 'test', [ 'karma', 'mochaTest' ]
