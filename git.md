# Git 
### Init
```bash
git init
```

### User config. (repo)
```bash
git config user.name "<name>"
git config user.email "<email>"
```

### Add / Rm all files to / from staged area
```bash
git add .
git status
git reset
git status
```

### Commit
```bash
git commit -m "<message>"
git log
```

### Undo commit
```bash
git reset --soft HEAD~1
git log
```

### Add remote
```bash
git remote add <remote-alias> <remote-link>
git remote -v
```

### Diff
```bash
git diff .
git diff --staged .
```

### Stash
```bash
git stash
git stash pop
```

### Pull & Push
```bash
git pull <remote-alias> <branch | HEAD> --rebase
git push <remote-alias> <branch | HEAD>
```

