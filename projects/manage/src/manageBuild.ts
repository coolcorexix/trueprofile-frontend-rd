import gitP, { SimpleGit } from 'simple-git/promise';


const currentGit: SimpleGit = gitP();

// back to root folder
currentGit.cwd('../..').then(rs => console.log(rs))

// compare commit hash and decide further action
async function main() {
    const projects = [
        "projects/main",
        "projects/test",
        "projects/validate",
    ];

    const projectsCommit = (await currentGit.log({
        file: 'projects',
        '--format': '%h',
        '-1': null,
    })).latest.hash;

    


}

// create dependency graph

// 
