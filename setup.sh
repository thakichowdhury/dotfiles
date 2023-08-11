DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

source "$DIR/populate-index.sh"
source "$DIR/symlink-config-files.sh"
