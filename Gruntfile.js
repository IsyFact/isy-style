var helper = require('./helper/helper');


module.exports = function (grunt) {
    

    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-compress');
    grunt.loadNpmTasks('grunt-json-generator');

    var portalColor = '#004179';
    
    grunt.initConfig({

        pkg: grunt.file.readJSON('package.json'),
        

        clean: ["src/main/resources/META-INF/resources"],

        less: {
            color: {
                options: {
                    cleancss: true,
                    modifyVars: {
                        'es-portal-color-100': portalColor,
                        'es-portal-color-80': helper.rgbaToHex(helper.hexToRgbA(portalColor, '0.8')),
                        'es-portal-color-60': helper.rgbaToHex(helper.hexToRgbA(portalColor, '0.6')),
                        'es-portal-color-40': helper.rgbaToHex(helper.hexToRgbA(portalColor, '0.4')),
                        'es-portal-color-20': helper.rgbaToHex(helper.hexToRgbA(portalColor, '0.2'))
                    }
                },
                files: [{
                    src: "src/less/es/color/color-base.less",
                    dest: "target/color.css"
                }]
            },
            production: {
                options: {
                    plugins: [new (require('less-plugin-clean-css'))({
                        compatibility: 'ie7'
                    })]
                },
                files: {
                    "src/main/resources/META-INF/resources/css/print.css": "src/less/print-jsf.less",
                    "src/main/resources/META-INF/resources/css/styles.css": "src/less/styles-jsf.less",
                    "src/main/resources/META-INF/resources/css/color.css" : "target/color.css",     
                }
            }
        },

        copy: {
            assets: {
                files: [
                    { expand: true, cwd: 'src/assets/', src: ['img/**', 'lib/**', 'plugins/**'], dest: 'src/main/resources/META-INF/resources/' }
                ],
                options: {
                    basePath: 'src/assets',
                }
            },
            fontawesome: {
                expand: true,
                cwd: 'node_modules/@fortawesome/fontawesome-free/webfonts',
                src: "**",
                dest: "src/main/resources/META-INF/resources/webfonts/",
                flatten: true
            }
        },

        json_generator: {
            target: {
                dest: "src/main/resources/META-INF/resources/package.json",
                options: {
                    "name": "@isyfact/isy-style",
                    "version": grunt.option('zielVersion'),
                    "description": "ISY-Fact styles and templates",
                    "author": "ISY-Fact",
                    "license": "UNLICENSED",
                    "dependencies": {}
                }
            }
        },


        compress: {
            tarGz: {
                options: {
                    archive: 'target/isy-style-5.0.0.tgz'
                },
                files: [{
                    cwd: "src/main/resources/META-INF/resources/",
                    expand: true,
                    src: './**',
                    dest: "package/",
                }]
            }
        },
    });

    grunt.registerTask('build', ['clean', 'less', 'copy', 'json_generator', 'compress']);
    grunt.registerTask('default', ['build']);
};