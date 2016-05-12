'use strict';

var gulp = require('gulp');
var babel = require('gulp-babel');
var sass = require('gulp-sass');
const imagemin = require('gulp-imagemin');
let src = 'src';
let dist = 'dist';

gulp.task('default', ['babel', 'sass','images', 'move', 'webfont']);

gulp.task('babel', function () {
  return gulp.src(`${src}/*.js`)
      .pipe(babel())
      .pipe(gulp.dest(`${dist}`));
});

gulp.task('sass', function () {
  return gulp.src('src/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('dist'));
});
gulp.task('images', function(){
  return gulp.src('src/images/**/*')
      .pipe(imagemin())
      .pipe(gulp.dest('dist/images'))
})
gulp.task('move', function() {
  return gulp.src([
    'src/index.html',
    'src/downloads/**/*'
  ], {base: 'src'})
    .pipe(gulp.dest('dist'));
});

gulp.task('webfont', function() {
  return gulp.src([
    'node_modules/clear-sans-webfont/fonts/**/*'
  ], {base: 'node_modules/clear-sans-webfont'})
    .pipe(gulp.dest('dist'));
});
