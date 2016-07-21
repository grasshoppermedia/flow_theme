module.exports = {

    fonts: {
        files: [
            {
                expand: true,
                src: '*',
                cwd: 'build/vendor/font-awesome/fonts/',
                dest: 'out/flow_child/src/fonts/'
            },
            {
                expand: true,
                src: '*',
                cwd: 'build/vendor/jquery-flexslider2/fonts/',
                dest: 'out/flow_child/src/fonts/'
            },
            {
                expand: true,
                src: '*',
                cwd: 'build/vendor/photoswipe/img/',
                dest: 'out/flow_child/src/bg/'
            }
        ]
    }

};