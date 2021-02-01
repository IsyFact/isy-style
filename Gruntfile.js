let helper = require('./helper/helper');

module.exports = function (grunt) {

    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-contrib-less');

    const portalColor = '#004179';
    const focusColor = portalColor;

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        clean: [
            "dist",
            "src/main/resources/META-INF/resources"
        ],
        less: {
            color: {
                options: {
                    plugins: [
                        new (require('less-plugin-clean-css'))()
                    ],
                    modifyVars: {
                        'es-portal-color-100': portalColor,
                        'es-portal-color-80': helper.rgbaToHex(helper.hexToRgbA(portalColor, '0.8')),
                        'es-portal-color-60': helper.rgbaToHex(helper.hexToRgbA(portalColor, '0.6')),
                        'es-portal-color-40': helper.rgbaToHex(helper.hexToRgbA(portalColor, '0.4')),
                        'es-portal-color-20': helper.rgbaToHex(helper.hexToRgbA(portalColor, '0.2')),
                        'input-border-focus': focusColor
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
                    "dist/css/print.css": "src/less/print-jsf.less",
                    "dist/css/styles.css": "src/less/styles-jsf.less",
                    "dist/css/color.css": "target/color.css"
                }
            }
        },
        copy: {
            assets: {
                files: [
                    {
                        expand: true,
                        cwd: 'src/assets/',
                        src: ['img/**', 'lib/**', 'plugins/**'],
                        dest: 'dist/'
                    }
                ],
                options: {
                    basePath: 'src/assets'
                }
            },
            fontawesome: {
                expand: true,
                cwd: 'node_modules/@fortawesome/fontawesome-free/webfonts',
                src: "**",
                dest: "dist/webfonts/",
                flatten: true
            },
            jquery: {
                expand: true,
                cwd: 'node_modules/jquery/dist/',
                src: "jquery.min.js",
                dest: "dist/lib/"
            }
        }
    });

    grunt.registerTask('copy_version_from_maven_to_package_json', function () {
        const buildPkgJson = grunt.file.readJSON('package.json');
        buildPkgJson.version = grunt.option('zielVersion')

        grunt.file.write("package.json",
            JSON.stringify(buildPkgJson, null, 2));
    });

    grunt.registerTask('remove_version_from_package_json', function () {
        const buildPkgJson = grunt.file.readJSON('package.json');
        delete buildPkgJson.version

        grunt.file.write("package.json",
            JSON.stringify(buildPkgJson, null, 2));
    });

    grunt.registerTask('build', ['clean', 'less', 'copy', 'copy_version_from_maven_to_package_json']);
    grunt.registerTask('default', ['build']);
};
