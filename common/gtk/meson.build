scss_files =files([
        'gtk/gtk.scss',
        'gtk-dark/gtk.scss',
        '_sass/_colors.scss',
        '_sass/_palette.scss',
        '_sass/_palette_variable.scss',
        '_sass/_variables.scss', 
        '_sass/apps/_budgie.scss',
        '_sass/apps/_nautilus.scss',
        '../../_config.scss',
        '_sass_fox/userChrome.scss',  
])


subdir('gtk')
subdir('gtk-dark')
subdir('assets_sass')
subdir('_sass_fox')

install_subdir('assets', install_dir: join_paths(get_option('datadir'), 'themes', 'Brightwork/gtk-3.0')
) 

install_subdir('assets', install_dir: join_paths(get_option('datadir'), 'themes', 'Brightwork Dark/gtk-3.0')
)        

install_subdir('chrome', install_dir: meson.build_root())