class bind::create_zone {
  # pull and merge values from hash
  $hiera_config = hiera_hash('bind::zone')
  if $hiera_config {
    create_resources(bind::zone, $hiera_config)
  }
}