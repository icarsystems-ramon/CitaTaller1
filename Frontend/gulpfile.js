var gulp = require('gulp'),
    shell = require('gulp-shell'),
    bower = require('gulp-bower');

// build
gulp.task('ember:build_development', shell.task([
    'ember build --environment development'
]));

// build
gulp.task('ember:build_production', shell.task([
    'ember build --environment production'
]));

// build
gulp.task('ember:build_ios', shell.task([
    'ember cordova:build --environment production --platform=ios'
]));

gulp.task('ember:build_android', shell.task([
    'ember cordova:build --environment production --platform=android'
]));

gulp.task('ember:build_test', shell.task([
    'ember build --environment test'
]));

// serve
gulp.task('ember:server', shell.task([
    'ember server'
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

gulp.task('deploy:azure', function () {
    return bower({
        cmd: ''
    });
});
