curl -sO https://storage.googleapis.com/fuchsia-ffx/ffx-linux-x64 && chmod +x ffx-linux-x64 && ./ffx-linux-x64 platform preflight
sudo apt install curl file git unzip
curl -s "https://fuchsia.googlesource.com/fuchsia/+/HEAD/scripts/bootstrap?format=TEXT" | base64 --decode | bash
export PATH=~/fuchsia/.jiri_root/bin:$PATH
source ~/fuchsia/scripts/fx-env.sh
source ~/.bash_profile
fx setup-ufw
fx set workstation_eng.chromebook-x64 --release
fx goma
sudo apt install ccache
fx build
