current_commit="$(git log -1 --pretty=format:"%h")"

PROJECTS="$(git ls-tree --name-only HEAD ./projects/*)"

for f in $PROJECTS; do
    str="$(git log -1 --pretty=format:"%h" $f)"
    if [ $current_commit = $str ]
        then
            printf "true \n"
        else
            printf "false \n"
    fi
done