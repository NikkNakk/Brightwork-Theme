scss_files =files([
        'userChrome.scss',
        '../_sass/_colors.scss',
        '../_sass/_palette.scss',
        '../_sass/_palette_variable.scss',
        '../_sass/_variables.scss', 
        '../../../_config.scss',
        
])


sassc = find_program('sassc', required: false)
if sassc.found()
sassc_opts = [ '-M', '-t', 'expanded' ]
endif

theme_deps += custom_target('Firefox',
                            input: 'userChrome.scss',
                            output: 'userChrome.css',
                            command: [
                              sassc, sassc_opts, '@INPUT@', '@OUTPUT@',
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,

                            install_dir : join_paths(meson.source_root(), 'common/gtk/chrome'),

                            )

run_target('fox',
command : 'fox-install.sh',
)

