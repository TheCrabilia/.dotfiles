# Dotfiles

Git configuration inspired from this [article](https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html).

## New machine setup

To set up a new machine to use version controlled config files, all you need to do is to clone the repository on your machine telling git that it is a bare repository:

```bash
git clone --recurse-submodules --separate-git-dir=${HOME}/.dotfiles https://github.com/TheCrabilia/.dotfiles ${HOME}
```

## Tmux

To install tmux plugins, press `<C-a>I`
