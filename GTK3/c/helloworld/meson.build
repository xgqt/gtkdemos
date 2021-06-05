project(
  'helloworld', 'c',
  version: '0.0.0',
  meson_version: '>= 0.50.0',
  license: 'CC0 1.0 Universal'
)

cc = meson.get_compiler( 'c' )
gnome = import( 'gnome' )

gtk = dependency( 'gtk+-3.0', version: '>= 3.15' )

executable(
  'helloworld',
  [
    'helloworld.c'
  ],
  dependencies: [ gtk ],
)
