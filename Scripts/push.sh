
now="$(date +%M-%d-%Y-%H%M%S)" # or: now=$(date +%M-%d-%Y-%H%M%S)

name="OS1" # !! static !!

cp -a /GIT/Local-Repo /GIT/Remote-Repo/"$name$now"
# -a: option is an improved recursive option, that preserve all file attributes, and also preserve symlinks
