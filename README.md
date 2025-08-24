# Git Diary

A simple markdown-based diary writing app managed with Git

🌐 Languages: [English](README.md) | [한국어](README.ko.md)

## Usage

Easily run with the `just` command.

### Installation

1.  Clone the repository with `git clone`
2.  Install `just` if not already installed

``` bash
# macOS (Homebrew)
brew install just

# windows
scoop install just
# or
choco install just
```

### Remote repository

1.  Create a private repository on GitHub to store your diary
2.  Link the private repository using `just link <repository_url>`

### Writing a diary

1.  Run `just new` to create a new diary markdown file. A file named
    `yyyy-mm-dd.md` will be generated in the `contents` directory.
2.  Open `contents/yyyy-mm-dd.md` with your preferred code editor and
    write your diary.
3.  Run `just publish` to commit and push your diary to the remote
    repository.
