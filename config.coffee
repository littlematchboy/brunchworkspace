exports.config =
  # See http://brunch.io/#documentation for documentation.
  files:
    javascripts:
      joinTo:
        '../../js/app.js': /^app/
        '../../js/vendor.js': /^vendor/
        '../../js/test/test.js': /^test[\\/](?!vendor)/
        '../../js/test/test-vendor.js': /^test[\\/](?=vendor)/
      order:
        # Files in `vendor` directories are compiled before other files
        # even if they aren't specified in order.before.
        before: [
          'vendor/scripts/console-polyfill.js',
          'vendor/scripts/jquery-2.0.0.js',
          'vendor/scripts/jquery.cookie.js',
          'vendor/scripts/underscore-1.4.4.js',
          'vendor/scripts/backbone-0.9.10.js',
          'vendor/scripts/hogan.js',
          'vendor/scripts/rangy-core.js',
          'vendor/scripts/sockjs-0.3.js',
          'vendor/scripts/moment-2.0.0.js'
        ]
        after: [
          'test/vendor/scripts/test-helper.js'
        ]

    stylesheets:
      joinTo:
        '../../css/app.css': /^app/
        '../../css/test.css': /^test/
      order:
        after: ['vendor/styles/helpers.css']

    templates:
      joinTo: '../../js/app.js'
