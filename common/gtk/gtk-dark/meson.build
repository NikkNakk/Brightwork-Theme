scss_files =files([
        'gtk.scss',
        '../_sass/_colors.scss',
        '../_sass/_palette.scss',
        '../_sass/_palette_variable.scss',
        '../_sass/_variables.scss', 
        '../_sass/apps/_budgie.scss',
        '../_sass/apps/_nautilus.scss',
        '../../../_config.scss',
        
])


sassc = find_program('sassc', required: false)
if sassc.found()
sassc_opts = [ '-M', '-t', 'expanded' ]
endif

theme_deps += custom_target('Brightwork-dark',
                            input: 'gtk.scss',
                            output: 'gtk.css',
                            command: [
                              sassc, sassc_opts, '@INPUT@', '@OUTPUT@',
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,
                            
                            install_dir : join_paths(get_option('datadir'), 'themes', 'Brightwork Dark/gtk-3.0'),

                            )
index_file = 'index.theme'
install_data(index_file, install_dir: join_paths(get_option('datadir'), 'themes', 'Brightwork Dark'))