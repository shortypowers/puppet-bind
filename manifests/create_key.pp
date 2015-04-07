class bind::create_key {
  # pull and merge values from bind::key hash
  $hiera_config = hiera_hash('bind::key')
  if $hiera_config {
    create_resources(bind::key, $hiera_config)
  }
}
