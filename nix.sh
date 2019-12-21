# comandi utili su nixos

nix-shell -p bundler -p bundix --run 'bundler update; bundler lock; bundler package --no-install --path vendor; bundix; rm -rf vendor'

nix-shell -p bundler --run "bundle exec jekyll serve"
