import 'classes/*'

class tika (
  $home_dir = $tika::params::tika_home_dir
) inherits tika::params {
  include tika::config
  include tika::files

  Class['tika::config'] -> Class['tika::files']
}
