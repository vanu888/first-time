# Git cheat sheet

**Create a global user**
    `git config --global user.name "USERNAME"`
    `git config --global user.email "EMAIL"`

**Create a folder** : `git init`
**View status** : `git status`
**Add all files and tracking** : `git add .`
**git commit message** : `git commit <fileName.txt> -m <"message">`
**Empty file but keep trackoing** : `.git-keep`
**To view log in oneline** : `git log --oneline`
**Lost commit without new commit message** : `git commit --amend --no-edit`

## File handling

**Recover the deleted file** : `git checkout -- <fileName>`
**Recover / retrack removed file** : `git reset Head <fileName>`
**Do not track** : `git rm <fileName>`
**Rename or move a file** : `git mv <old> <new>`
**See unstaged changes** : `git diff <file>`

## Git branching

**List local branches** : `git branch`
**Create new branch** : `git branch <new-branch>`
**Switch to branch** : `git checkout <branch>`
**Merge branch into current** : `git merge <branch>`
**Add remote repo** : `git remote add <name> <url>`
**Push to remote** : `git push <remote> <branch>`
**Pull from remote** : `git pull <remote> <branch>`
**Fetch updates** : `git fecth <remote>`

## More

**Create a tag** : `git tag <tagname>`
**Push a tag to remote** : `git push <remote> <tagname>`
**Save uncomitted changes** : `git stash`
**Apply stashed changes** : `git stash apply`
**Apply a commit to current branch** : `git cherry-pick <commit>`
**Rebase current branch onto another** : `git rebase <branch>`
**See who changed each line of a file** : `git blame <file>`
**Undo a commit by creating a new one** : `git revert <commit>`
**Search for patterns in tracked files** : `git grep <pattern>`
**List tracked files** : `git ls-files`
**See a log of all reference changes** : `git reflog`
**Check Git file system integrity** : `git fsck`
