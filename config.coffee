exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.

  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
        'test/js/test.js': /^test(\/|\\)(?!vendor)/
        'test/js/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        before: [
          'vendor/scripts/console-helper.js'
          'vendor/scripts/jquery.js'
          'vendor/scripts/underscore.js'
          'vendor/scripts/backbone.js'
        ]

    stylesheets:
      joinTo:
        'css/app.css': /^(app|vendor)/
        'test/css/test.css': /^test/
      order:
        before: []
        after: []

    templates:
      joinTo: 'js/app.js'

  plugins:
    jade:
      pretty: yes
    static_jade:
      extension:  ".static.jade"
      #path:       [ /app(\/|\\)html/ ]  # static-compile each file in this directories
      #asset:      "app/jade_asset"      # specify the compilation output
