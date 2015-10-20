var gulp = require('gulp'),
    shell = require('gulp-shell'),
    bower = require('gulp-bower');

// build
gulp.task('ember_build_development', shell.task([
    'ember build --environment development'
]));

// build
gulp.task('ember_build_production', shell.task([
    'ember build --environment production'
]));

gulp.task('ember_build_test', shell.task([
    'ember build --environment test'
]));

// serve
gulp.task('ember_server', shell.task([
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

gulp.task('deploy_azure', function () {
    return bower({
        cmd: ''
    });
});
