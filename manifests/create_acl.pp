class bind::create_acl {
  # pull and merge values from hash
  $hiera_config = hiera_hash('bind::acl')
  if $hiera_config {
    create_resources(bind::acl, $hiera_config)
  }
}