module.exports = function(config){
  config.set({
    preprocessors: {
      'test/spec/**/*.coffee': ['coffee']
    },

    coffeePreprocessor: {
      // options passed to the coffee compiler
      options: {
        bare: true,
        sourceMap: false
      },
      // transforming the filenames
      transformPath: function(path) {
        return path.replace(/\.coffee$/, '.js')
      }
    },

    basePath : './',

    files : [
      "dist/assets/lib/moment/min/moment.min.js",
      "dist/assets/lib/jquery/dist/jquery.js",
      "dist/assets/lib/bootstrap/dist/js/bootstrap.js",
      "dist/assets/lib/angular/angular.js",
      "dist/assets/lib/angular-mocks/angular-mocks.js",
      "dist/assets/lib/angular-route/angular-route.js",
      "dist/assets/lib/angular-resource/angular-resource.js",
      "dist/assets/lib/angular-ui-grid/ui-grid.js",
      "dist/assets/lib/angular-ui-router/release/angular-ui-router.js",
      "dist/assets/lib/angular-date-time-input/src/dateTimeInput.js",
      "dist/assets/lib/angular-bootstrap-datetimepicker/src/js/datetimepicker.js",
      "dist/assets/lib/angular-bootstrap-datetimepicker/src/js/datetimepicker.templates.js",
      "dist/assets/scripts/all.min.js",
      'test/spec/**/*.coffee'
    ],

    autoWatch : true,

    frameworks: ['jasmine'],

    browsers : ['Chrome'],

    plugins : [
            'karma-chrome-launcher',
            'karma-firefox-launcher',
            'karma-jasmine',
            'karma-junit-reporter',
            'karma-coffee-preprocessor'
            ],

    junitReporter : {
      outputFile: 'test_out/unit.xml',
      suite: 'unit'
    }
  });
};
