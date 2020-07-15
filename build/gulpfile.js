var gulp  = require('gulp'),
  sass = require('gulp-sass'),
  sourcemaps = require('gulp-sourcemaps'),
  cleanCss = require('gulp-clean-css'),
  rename = require('gulp-rename'),
  postcss      = require('gulp-postcss'),
  autoprefixer = require('autoprefixer');

function buildCss() {
    return gulp.src(['src/scss/*.scss', 'src/css/*.css', 'node_modules/bootstrap4c-chosen/dist/css/component-chosen.css'])
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
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

function installIcomoonFonts() {
  return gulp.src(['src/font/icomoon/*'])
    .pipe(gulp.dest('../dist/icomoon/'));
}

function watcher() {
    gulp.watch(['scss/*.scss'], gulp.series(buildCss));
}

exports.watch = gulp.series(
  gulp.parallel(
    buildCss,
    installJS,
    installChosen,
    installFontAwesomeFonts,
    installIcomoonFonts
  ),
  watcher
);

exports.default = gulp.parallel(
  buildCss,
  installJS,
  installChosen,
  installFontAwesomeFonts,
  installIcomoonFonts
);