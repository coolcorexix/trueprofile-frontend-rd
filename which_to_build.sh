current_commit="$(git log -1 --pretty=format:"%h" ./projects)"

PROJECTS=("projects/main" "projects/test" "projects/validate")

for p in ${PROJECTS[@]}; do
    str="$(git log -1 --pretty=format:"%h" $p)"
    if [ $current_commit = $str ]
        then
            printf "true \n"
        else
            printf "false \n"
    fi
done