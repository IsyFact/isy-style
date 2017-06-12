// Für das Deployment in eine Artifactory Instanz via Grunt Task deploy
// muss die folgende Konfiguration gepflegt werden.
const artifactoryConfig = {
  url: '', // Basis URL zum Artifactory
  repository: '', // Name des internen Repositories im Artifactory
  username: '',
  password: ''
};

module.exports = function (grunt) {
    grunt.initConfig({

        pkg: grunt.file.readJSON('package.json'),
		
        // Remove /dist
        clean: ["dist"],

        // compile LESS
        less: {
            production: {
                options: {
                    plugins: [new (require('less-plugin-clean-css'))({
                        compatibility: 'ie7'
                    })]
                },
                files: {
                    "dist/css/styles.css": "src/less/styles.less",
                    "dist/css/print-jsf.css": "src/less/print-jsf.less",
					"dist/css/styles-jsf.css": "src/less/styles-jsf.less"
                }
            }
        },

        // copy assets
        copy: {
            all: {
                files: [
                    { expand: true, cwd: 'src/assets/', src: ['**'], dest: 'dist/' },
                    { expand: true, src: ['package.json'], dest: 'dist/' }
                ],
                options: {
                    basePath: 'src/assets'
                }
            },
            iconfont: {
                expand: true,
                cwd: 'src/iconfont/fonts/',
                src: "**",
                dest: "dist/css/fonts/",
                flatten: true
            }
        },
			
		// In Artifactory deployen
		artifactory: { 
			options: artifactoryConfig,
			client: {
				files: [ 
                    { expand: true, cwd: 'dist', src: ['**'] }
                ],
				options: {
					publish: [{
						id: 'de.bund.bva.isyfact:isy-style:zip',
						version: '<%= pkg.version %>', 
						path: 'dist/'
					}],
					parameters: [
						'build.name=isy-style',
						'version=<%= pkg.version %>'
					]
				}
			}
		}
    });

    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-less');
	grunt.loadNpmTasks('grunt-artifactory-artifact');

    grunt.registerTask('build', ['clean', 'less', 'copy']);
	grunt.registerTask('deploy', ['build', 'artifactory:client:publish']);
    grunt.registerTask('default', ['build']);
};