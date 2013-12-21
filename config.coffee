exports.config =
    definition: false
        wrapper: (path, data) ->
          """
            (function() {
                'use strict';
                #{data}
            }).call(this);
          """
    
    paths:
        public: '../../www/media/'
        watched: [
            'site'
            'vendor'
            ]
    
    files:
        javascripts:
            joinTo:
                'js/site.js': /^(site|vendor)/
            before: [
                      'vendor/scripts/console-helper.js'
                      'vendor/scripts/jquery-1.8.3.js'
                    ]
        stylesheets:
            joinTo:
                'css/site.css': /^(site|vendor)/
                'css/ie.css': /^site\/styles\/ie/
                
        templates:
            joinTo: 
                'js/site.js'
                
    sourceMaps: false
