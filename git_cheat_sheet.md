# Git cheat sheet

**Create a global user** <br>
    `git config --global user.name "USERNAME"` <br>
    `git config --global user.email "EMAIL"` <br>

**Create a folder** : `git init` <br>
**View status** : `git status` <br>
**Add all files and tracking** : `git add .` <br>
**git commit message** : `git commit <fileName.txt> -m <"message">` <br>
**Empty file but keep trackoing** : `.git-keep` <br>
**To view log in oneline** : `git log --oneline` <br> 
**Lost commit without new commit message** : `git commit --amend --no-edit` <br>

## File handling

**Recover the deleted file** : `git checkout -- <fileName>` <br>
**Recover / retrack removed file** : `git reset Head <fileName>` <br>
**Do not track** : `git rm <fileName>` <br> 
**Rename or move a file** : `git mv <old> <new>` <br>
**See unstaged changes** : `git diff <file>` <br>

## Git branching

**List local branches** : `git branch` <br>
**Create new branch** : `git branch <new-branch>` <br> 
**Switch to branch** : `git checkout <branch>` <br>
**Merge branch into current** : `git merge <branch>` <br>
**Add remote repo** : `git remote add <name> <url>` <br>
**Push to remote** : `git push <remote> <branch>` <br>
**Pull from remote** : `git pull <remote> <branch>` <br>
**Fetch updates** : `git fecth <remote>`<br

## More

**Create a tag** : `git tag <tagname>` <br>
**Push a tag to remote** : `git push <remote> <tagname>` <br>
**Save uncomitted changes** : `git stash` <br>
**Apply stashed changes** : `git stash apply` <br>
**Apply a commit to current branch** : `git cherry-pick <commit>` <br>
**Rebase current branch onto another** : `git rebase <branch>` <br>
**See who changed each line of a file** : `git blame <file>` <br>
**Undo a commit by creating a new one** : `git revert <commit>` <br>
**Search for patterns in tracked files** : `git grep <pattern>` <br>
**List tracked files** : `git ls-files` <br>
**See a log of all reference changes** : `git reflog` <br>
**Check Git file system integrity** : `git fsck`<br>
