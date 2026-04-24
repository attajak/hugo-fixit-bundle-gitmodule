#!/usr/bin/env bash
add_submodules() {
  local -r repo_path="$1"
  local -r sub_path="$2"

  if [[ -z "$repo_path" || -z "$sub_path" ]]; then
    echo "Usage: $0 <repo_path> <sub_path>"
    exit 1
  fi

  git submodule add "$repo_path" "$sub_path"
  # git add "$theme_path"
  # git commit -m "Add FixIt bundle as a submodule at $theme_path"
}
# Start of the script
{
  # List of dependencies to include in the bundle
  echo "Adding submodules..."
  echo ""
  add_submodules "https://github.com/hugo-fixit/FixIt" "./themes/FixIt"
  add_submodules "https://github.com/hugo-fixit/component-projects" "./themes/component-projects"
  add_submodules "https://github.com/hugo-fixit/cmpt-flyfish" "./themes/cmpt-flyfish"
  add_submodules "https://github.com/hugo-fixit/cmpt-mdevtools" "./themes/cmpt-mdevtools"
  add_submodules "https://github.com/hugo-fixit/cmpt-santa-hat" "./themes/cmpt-santa-hat"
  add_submodules "https://github.com/hugo-fixit/cmpt-translate" "./themes/cmpt-translate"
  add_submodules "https://github.com/hugo-fixit/hugo-atom-feed" "./themes/hugo-atom-feed"
  add_submodules "https://github.com/hugo-fixit/hugo-json-feed" "./themes/hugo-json-feed"
  add_submodules "https://github.com/hugo-fixit/shortcode-asciinema" "./themes/shortcode-asciinema"
  add_submodules "https://github.com/hugo-fixit/shortcode-caniuse" "./themes/shortcode-caniuse"
  add_submodules "https://github.com/hugo-fixit/shortcode-docs-bookmark" "./themes/shortcode-docs-bookmark"
  add_submodules "https://github.com/hugo-fixit/shortcode-missing-translation" "./themes/shortcode-missing-translation"
  add_submodules "https://github.com/hugo-fixit/shortcode-mmt-netease" "./themes/shortcode-mmt-netease"
  add_submodules "https://github.com/hugo-fixit/shortcode-rewards" "./themes/shortcode-rewards"
  echo ""
  echo "Submodules added successfully."
}
