class tika::files {
  exec { "download_tika":
    cwd => "/tmp",
    command => "/usr/bin/wget -c http://archive.apache.org/dist/tika/tika-app-0.10.jar",
    creates => "/tmp/tika-app-0.10.jar",
    timeout => 0,
  }

  exec { "deploy_tika":
    cwd => "/tmp",
    command => "/bin/mv /tmp/tika-app-0.10.jar /opt/tika/tika-app-0.10.jar",
    creates => "/opt/tika/tika-app-0.10.jar",
    require => Exec["download_tika"],
  }
}
