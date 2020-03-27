current_commit_of_monorepo="$(git log -1 --pretty=format:"%h")"
current_commit_of_workspaces="$(git log -1 --pretty=format:"%h" ./projects)"

PROJECTS=("projects/main" "projects/test" "projects/validate")

for p in ${PROJECTS[@]}; do 
    str="$(git log -1 --pretty=format:"%h" $p)"
    if [[ $current_commit_of_workspaces != $current_commit_of_monorepo || \
        $str = $current_commit_of_workspaces ]]
        then
            printf "%s: true \n" $p
        else
            printf "%s: false \n" $p
    fi
done