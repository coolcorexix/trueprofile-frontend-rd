# this script run with the assumption that every build went throught successfully

current_commit_of_monorepo="$(git log -1 --pretty=format:"%h")"
current_commit_of_workspaces="$(git log -1 --pretty=format:"%h" ./projects)"

PROJECTS=("projects/main" "projects/test" "projects/validate")

for p in ${PROJECTS[@]}; do 
    current_commit_of_project="$(git log -1 --pretty=format:"%h" $p)"
    if [[ $current_commit_of_workspaces != $current_commit_of_monorepo || \
        $current_commit_of_project = $current_commit_of_workspaces ]]
        then
            printf "%s: true \n" $p
        else
            printf "%s: false \n" $p
    fi
done