exports.config =
    modules:
        definition: false
        wrapper: (path, data) ->
          """
            (function() {
                #{data}
            }).call(this);
          """

    paths:
        public: '../../www/media/'

        watched: [
            'local'
            'vendor'
        ]

    files:
        javascripts:
            joinTo:
                'scripts/site.js': /^(local\\scripts|vendor)/
                'scripts/site.js': /^(local\/scripts|vendor)/
            order:
                before: [
                    # Vendor helper JS functions.
                    'vendor/scripts/console-helper.js'
                    'vendor/scripts/jquery-1.10.2.js'

                    # Getme/Local helper JS functions
                    'local/scripts/video.js'

                    # Website specific JS.
                    'local/scripts/site.coffee'

                    # Individual page JS.

                    ]
        stylesheets:
            joinTo:
                # Due to issue with windows paths, we have to compile the site.ss using 2 different paths.
                'styles/site.css': /^(local\\styles\\site)/
                'styles/site.css': /^(local\/styles\/site)/
                

    sourceMaps: false

    optimize: true
