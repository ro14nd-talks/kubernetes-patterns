module.exports = function (grunt) {
  'use strict';

  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

  // Project configuration
  grunt.initConfig({

    replace: {
      hljs: {
        src: ['bower_components/highlightjs/styles/*.css'],
        dest: 'styles/',
        replacements: [{
          from: '.hljs-',
          to: '.'
        }, {
          from: '.hljs',
          to: 'pre code'
        },{
          from: /^\./mg,
          to: 'pre .'
        }]
      }
    },

    bump: {
      options: {
        files: [
          'package.json',
          'bower.json',
          'README.md'
        ],
        updateConfigs: [],
        commit: true,
        commitMessage: 'Release v%VERSION% #noissue',
        commitFiles: ['-a'], // '-a' for all files
        createTag: true,
        tagName: '%VERSION%',
        tagMessage: 'Version %VERSION%',
        push: true,
        pushTo: 'origin master',
        gitDescribeOptions: '--tags --always --abbrev=1 --dirty=-d' // options to use with '$ git describe'
      }
    }

  });

  // Default task
  grunt.registerTask('build', [
    'replace:hljs'
  ]);

  grunt.registerTask('default', [
    'build'
  ]);

  grunt.registerTask('release', [
    'build',
    'bump'
  ]);
};
