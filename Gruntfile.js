module.exports = function (grunt) {

    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-compress');
	grunt.loadNpmTasks('grunt-write-bower-json');
	grunt.loadNpmTasks('grunt-rename');
	grunt.loadNpmTasks('grunt-artifactory-artifact');
	
    grunt.initConfig({

        pkg: grunt.file.readJSON('package.json'),
		
        //clean tmp and output directories
        clean: {
            build: {
                src: ["www/*"]
            }
        },

        //static code analysis for es-specific js code
        jshint: {
            options: {
                browser: true,
                strict: true,
                globals: {
                    jQuery: true,
                    angular: true
                }
            },
            all: ['src/js/**/*.js']
        },

        //compile LESS to CSS (temporary files are merged later)
        less: {
            production: {
                options: {
                    cleancss: true,
                    sourceMap: false,
                    sourceMapFilename: "www/css/styles.css.map"
                },
                files: {
                    "www/css/styles.css": "src/less/styles.less",
                    "www/css/print-jsf.css": "src/less/print-jsf.less",
					"www/css/styles-jsf.css": "src/less/styles-jsf.less"
                }
            }
        },

        //merge all code fragments
        concat: {

            options: {
                stripBanners: true
            },

            index: {
                src: ['src/templates/head.tpl', 'src/templates/index.tpl', 'src/templates/foot.tpl'],
                dest: 'www/index.html'
            },

            dashboard: {
                src: ['src/templates/head.tpl', 'src/templates/page-dashboard.tpl', 'src/templates/foot.tpl'],
                dest: 'www/page-dashboard.html'
            },

            pageDetails: {
                src: ['src/templates/head.tpl', 'src/templates/page-details.tpl', 'src/templates/foot.tpl'],
                dest: 'www/page-details.html'
            },

            pageModalEditData: {
                src: ['src/templates/head.tpl', 'src/templates/page-modal-edit-data.tpl', 'src/templates/foot.tpl'],
                dest: 'www/page-modal-edit-data.html'
            },

            pageModalWizard: {
                src: ['src/templates/head.tpl', 'src/templates/page-modal-wizard.tpl', 'src/templates/foot.tpl'],
                dest: 'www/page-modal-wizard.html'
            },

            pageNojsEditData: {
                src: ['src/templates/head.tpl', 'src/templates/page-nojs-edit-data.tpl', 'src/templates/foot.tpl'],
                dest: 'www/page-nojs-edit-data.html'
            },

            pageSearchResult: {
                src: ['src/templates/head.tpl', 'src/templates/page-search-result.tpl', 'src/templates/foot.tpl'],
                dest: 'www/page-search-result.html'
            },

            pageSearchResultPrint: {
                src: ['src/templates/page-search-result-print.tpl', 'src/templates/foot.tpl'],
                dest: 'www/page-search-result-print.html'
            }       
        },

        //copy assets
        copy: {
            all: {
                files: [
                    { expand: true, cwd: 'src/assets/', src: ['**'], dest: 'www/' }
                ],
                options: {
                    basePath: 'src/assets'
                }
            },
            iconfont: {
                expand: true,
                cwd: 'src/iconfont/fonts/',
                src: "**",
                dest: "www/css/fonts/",
                flatten: true
            }
        },

		//creates bower.json based on bower-template.json with values from package.json
		writeBowerJson: {
			options: {
				bowerJsonTemplate: 'bower-template.json'
			}
		},

		//moves bower.json to www directory
		rename: {
			moveBower: {
				src: 'bower.json',
				dest: 'www/bower.json'
			}
		}, 
		
        //watch changes in files and re-call watchtasks
        watch: {
            scripts: {
                files: ['src/*',
                        'src/**/*',
                        'src/less/**/*.less',
                        'src/less/*.tpl'],

                tasks: ['watchtasks']
            }
        },

        //only for development, creates a webserver
        connect: {
            server: {
                options: {
                    port: 1337,
                    base: 'www'
                }
            }
        },
		
		// ZIP für Deployment erstellen
		compress: {
			main: {
				options: {
					archive: 'www/plis-style-<%= pkg.version %>.zip'
				},
				files: [
					{ expand: true, cwd: 'www/', src: ['*/**'], dest: './'}, 
					{ expand: true, cwd: 'www/', src: ['bower.json'], dest: './'}
				]
			}
		},
		
		// In Artifactory deployen
		artifactory: { 
			options: {
				url: process.env.ARTIFACTORY,
				repository: process.env.REPOSITORY,
				username: process.env.USERNAME,
				password: process.env.PASSWORD
			},
			client: {
				files: [
					{ expand: true, cwd: 'www/', src: ['*/**'], dest: './'}, 
					{ expand: true, cwd: 'www/', src: ['bower.json'], dest: './'}
				],
				options: {
					publish: [{
						id: 'de.bund.bva.pliscommon:plis-style:zip',
						version: '<%= pkg.version %>', 
						path: 'dist/'
					}],
					parameters: [
						'build.name=plis-style',
						'version=<%= pkg.version %>'
					]
				}
				
				
			}
		}

});
	
    grunt.registerTask('default', ['clean', 'jshint', 'less', 'concat', 'copy','writeBowerJson','rename','compress']);
    grunt.registerTask('watchtasks', ['clean', 'jshint', 'less', 'concat', 'copy']);
    grunt.registerTask('run', ['default', 'connect', 'watch'])
	
	grunt.registerTask('deploy', ['default','artifactory:client:publish']);

};