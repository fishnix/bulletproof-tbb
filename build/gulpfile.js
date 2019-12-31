var gulp  = require('gulp'),
  sass = require('gulp-sass'),
  sourcemaps = require('gulp-sourcemaps'),
  cleanCss = require('gulp-clean-css'),
  rename = require('gulp-rename'),
  postcss      = require('gulp-postcss'),
  autoprefixer = require('autoprefixer');

function buildCss() {
    return gulp.src(['src/scss/*.scss'])
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(postcss([ autoprefixer({ browsers: [
                'Chrome >= 35',
                'Firefox >= 38',
                'Edge >= 12',
                'Explorer >= 10',
                'iOS >= 8',
                'Safari >= 8',
                'Android 2.3',
                'Android >= 4',
                'Opera >= 12']})]))
        .pipe(sourcemaps.write())
        .pipe(gulp.dest('../dist/css/'))
        .pipe(cleanCss())
        .pipe(rename({suffix: '.min'}))
        .pipe(gulp.dest('../dist/css/'))
}

function installJS() {
  return gulp.src(['node_modules/bootstrap/dist/js/bootstrap.bundle*js'])
  .pipe(gulp.dest('../dist/js/'));
}

function installChosen() {
  return gulp.src(['node_modules/chosen-js/**'])
  .pipe(gulp.dest('../dist/chosen-js'));
}

function installFontAwesomeFonts() {
  return gulp.src('node_modules/@fortawesome/fontawesome-free/webfonts/*')
    .pipe(gulp.dest('../dist/webfonts/'));
}

function watcher() {
    gulp.watch(['scss/*.scss'], gulp.series(buildCss));
}

exports.watch = gulp.series(
    gulp.parallel(
      buildCss,
      installJS,
      installChosen,
      installFontAwesomeFonts
    ),
    watcher
  );

exports.default = gulp.parallel(
    buildCss,
    installJS,
    installChosen,
    installFontAwesomeFonts
  );