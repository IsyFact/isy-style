module.exports = function (grunt) {
    grunt.initConfig({

        pkg: grunt.file.readJSON('package.json'),
		
        clean: ["src/main/resources/META-INF/resources"],

        less: {
            production: {
                options: {
                    plugins: [new (require('less-plugin-clean-css'))({
                        compatibility: 'ie7'
                    })]
                },
                files: {
                    "src/main/resources/META-INF/resources/css/print.css": "src/less/print-jsf.less",
					"src/main/resources/META-INF/resources/css/styles.css": "src/less/styles-jsf.less"
                }
            }
        },

        copy: {
            assets: {
                files: [
                    { expand: true, cwd: 'src/assets/', src: ['css/ie8fixes.css', 'img/**', 'lib/**', 'plugins/**'], dest: 'src/main/resources/META-INF/resources/' }
                ],
                options: {
                    basePath: 'src/assets'
                }
            },
            fontawesome: {
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

    grunt.registerTask('build', ['clean', 'less', 'copy']);
    grunt.registerTask('default', ['build']);
};