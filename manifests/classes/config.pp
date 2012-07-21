class tika::config {

  file { "tika home dir":
    path => $tika::home_dir,
    ensure => directory,
    recurse => true,
  }

}
