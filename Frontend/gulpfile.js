var gulp = require('gulp'),
    shell = require('gulp-shell'),
    bower = require('gulp-bower');

// build
gulp.task('build:development', shell.task([
    'ember build --environment development'
]));

// serve
gulp.task('build:serve', shell.task([
    'ember serve'
]));

// bower
gulp.task('bower:install', function () {
    return bower({
        cmd: 'install'
    });
});

gulp.task('bower:update', function () {
    return bower({
        cmd: 'update'
    });
});

