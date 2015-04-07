class bind::create_view {
  # pull and merge values from hash
  $hiera_config = hiera_hash('bind::view')
  if $hiera_config {
    create_resources(bind::view, $hiera_config)
  }
}