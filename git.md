# Git 
### Init
```bash
git init
```

### User config. (repo)
```bash
git config user.name "<name>"
git config user.email "<email>"

# for shared environments:
git -c user.name="<name>" \
    -c user.email="<email>" \
    commit -m "<message>"
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

### GPG Config.
```bash
mkdir -p <gpgdir> && chmod 700 <gpgdir>
gpg --homedir <gpgdir> -full-generate-key
gpg --homedir <gpgdir>--list-secret-keys --keyid-format LONG
gpg --homedir <gpgdir> --armor --export <mail@mail.com>
GNUPGHOME="<gpgdir>" git config --global user.signingkey <mail@mail.com>
# git config --global commit.gpgsign true
# or git commit -S -m "tag: example commit."
```
