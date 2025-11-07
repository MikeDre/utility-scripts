# Git Commit Prefixer

This script helps to standardise Git commit messages by providing a menu in the terminal to select a commit type and automatically adding the current Git branch to the commit message.

## Features

- Dropdown list of commit types with emojis:
  - ✨ Added:
  - 🐛 Fixed:
  - 🔧 Updated:
  - ♻️ Changed:
  - 🗑 Removed:
- Automatically appends the current branch name to the commit message (e.g., `♻️ Changed: Logo asset in footer [main]`).
- Ensures consistent and readable Git commit messages.

## Setup

### Make the Script Executable

You may need to run the following command to make the script executable:

```bash
chmod +x ~/Sites/bash-scripts/commit.sh
```

### Update .zshrc

Add the following alias to your .zshrc to quickly run the script:

```bash
alias gcommit="~/Sites/bash-scripts/commit.sh"
```


Then reload your .zshrc file:

```bash
source ~/.zshrc
```
