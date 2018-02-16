const copyPackageJson = require('./copy-package-json');

module.exports = function (grunt) {
    grunt.initConfig({

        pkg: grunt.file.readJSON('package.json'),
		
        // Remove /src/main/resources/META-INF/resources
        clean: ["src/main/resources/META-INF/resources"],

        // compile LESS
        less: {
            production: {
                options: {
                    plugins: [new (require('less-plugin-clean-css'))({
                        compatibility: 'ie7'
                    })]
                },
                files: {
                    "src/main/resources/META-INF/resources/css/styles.css": "src/less/styles.less",
                    "src/main/resources/META-INF/resources/css/print-jsf.css": "src/less/print-jsf.less",
					"src/main/resources/META-INF/resources/css/styles-jsf.css": "src/less/styles-jsf.less"
                }
            }
        },

        // copy assets
        copy: {
            all: {
                files: [
                    { expand: true, cwd: 'src/assets/', src: ['**'], dest: 'src/main/resources/META-INF/resources/' }
                ],
                options: {
                    basePath: 'src/assets'
                }
            },
            fontawesme: {
                expand: true,
                cwd: 'node_modules/font-awesome/fonts/',
                src: "**",
                dest: "src/main/resources/META-INF/resources/fonts/",
                flatten: true
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-less');
	grunt.loadNpmTasks('grunt-artifactory-artifact');

    grunt.registerTask('copy-package-json', 'copies changelog and removes private flag and scripts', function() {
      copyPackageJson();
    });
    grunt.registerTask('build', ['clean', 'less', 'copy', 'copy-package-json']);
    grunt.registerTask('default', ['build']);
};