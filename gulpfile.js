var gulp   = require('gulp'),
    bower  = require('gulp-bower'),
    coffee = require('gulp-coffee'),
    concat = require('gulp-concat'),
    express = require('express'),
    app    = express(),
    gutil  = require('gulp-util'),
    jade   = require('gulp-jade'),
    livereload = require('gulp-livereload'),
    styl   = require('gulp-stylus'),
    path   = require('path'),
    es     = require('event-stream');

gulp.task('bower', function() {
  return bower()
    .pipe(gulp.dest('dist/assets/lib/'));
});

gulp.task('css', function() {
  return es.merge(
      gulp.src('app/stylesheets/**/*.styl').
        pipe( styl( { whitespace: true } ) ),
      gulp.src('app/stylesheets/**/*.css')).
    pipe( gulp.dest('dist/assets/stylesheets/') ).
    pipe( livereload());
});

gulp.task('js', function() {
  return es.merge(
      gulp.src('app/scripts/**/*.coffee').
        pipe(coffee()), 
      gulp.src('app/scripts/**/*.js')).
    pipe( concat('all.min.js')).
    pipe( gulp.dest('dist/assets/scripts/')).
    pipe( livereload());
});

gulp.task('templates', function() {
  return es.merge(
      gulp.src('app/views/**/*.jade').
        pipe(jade({ pretty: true })),
      gulp.src('app/index.html'),
      gulp.src('app/views/**/*.html')).
    pipe(gulp.dest('dist/')).
    pipe( livereload());
});

gulp.task('express', function() {
  app.use(express.static(path.resolve('./dist')));
  app.listen(8000);
  gutil.log('Listening on port: 8000');
});
 
gulp.task('watch', function () {
  livereload.listen();
 
  gulp.watch('app/stylesheets/**/*.css',['css']);
  gulp.watch('app/stylesheets/**/*.styl',['css']);

  gulp.watch('app/scripts/**/*.js',['js']);
  gulp.watch('app/scripts/**/*.coffee',['js']);

  gulp.watch('app/views/**/*.jade',['templates']);
  gulp.watch('app/views/**/*.html',['templates']);
  gulp.watch('app/index.html',['templates']);
});

// Default Task
gulp.task('dist', ['bower','js','css','templates']);
gulp.task('default', ['dist','express','watch']);
