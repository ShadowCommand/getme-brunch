exports.config =
    paths:
        public: ''
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
                'css/site.css'
        templates:
            joinTo: 
                'js/site.js'