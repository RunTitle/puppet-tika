class tika::files {
  exec { "download_tika":
    cwd => "/tmp",
    command => "/usr/bin/wget -c http://www.apache.org/dyn/closer.cgi/tika/tika-app-1.4.jar",
    creates => "/tmp/tika-app-1.4.jar",
    timeout => 0,
  }

  exec { "deploy_tika":
    cwd => "/tmp",
    command => "/bin/mv /tmp/tika-app-1.4.jar /opt/tika/tika-app-1.4.jar",
    creates => "/opt/tika/tika-app-1.4.jar",
    require => Exec["download_tika"],
  }
}
