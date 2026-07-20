$env.config.buffer_editor = "nvim"
$env.STARSHIP_CONFIG = ($nu.default-config-dir | path join ".." "starship" "starship.toml" | path expand)
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
