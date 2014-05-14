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
                'scripts/site.js': /^(local\/scripts|vendor)/
                'scripts/site.js': /^(local\\scripts|vendor)/
            order:
                before: [
                    # Vendor helper JS functions.
                    'vendor/scripts/console-helper.js'
                    'vendor/scripts/jquery-1.10.2.js'
                    'vendor/scripts/royalslider.js'
                    'vendor/scripts/jquery-ui-1.10.4.js'
                    'vendor/scripts/charts.js'

                    # Getme/Local helper JS functions
                    'local/scripts/autocomplete.js'
                    'local/scripts/video.js'
                    'local/scripts/stars.js'
                    'local/scripts/text-a-trader.js'
                    'local/scripts/viewport.coffee'
                    'local/scripts/events.coffee'
                    'local/scripts/tabber.coffee'
                    'local/scripts/helpers.coffee'
                    'local/scripts/viewport.coffee'
                    'local/scripts/formui.coffee'

                    # Website specific JS.
                    'local/scripts/site.coffee'

                    # Individual page JS.
                    'local/scripts/page/home.coffee'
                    'local/scripts/page/advert.coffee'
                    'local/scripts/page/join-us.coffee'
                    'local/scripts/page/leave-a-review.coffee'
                    'local/scripts/page/search-by-name.coffee'
                    'local/scripts/page/faq.coffee'
                    'local/scripts/page/how-it-works.coffee'
                    'local/scripts/page/trades.coffee'
                    'local/scripts/page/dashboard.coffee'

                    # Keep position last.
                    'local/scripts/callback.js'
                    ]
        stylesheets:
            joinTo:
                # Due to issue with windows paths, we have to compile the site.ss using 2 different paths.
                'styles/site.css': /^(local\/styles\/site)/
                'styles/site.css': /^(local\\styles\\site)/
                    
                'styles/dashboard.css': /^(local\/styles\/dashboard)/
                'styles/dashboard.css': /^(local\\styles\\dashboard)/

                'styles/reports.css': /^(local\/styles\/reports)/
                'styles/reports.css': /^(local\\styles\\reports)/

                'styles/print.css': /^(local\/styles\/print)/
                'styles/print.css': /^(local\\styles\\print)/

                'styles/error.css': /^(local\/styles\/error)/
                'styles/error.css': /^(local\\styles\\error)/

                'styles/ie8.css': /^(local\/styles\/ie8)/
                'styles/ie8.css': /^(local\\styles\\ie8)/

    sourceMaps: false

    optimize: true
