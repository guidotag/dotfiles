# Based on https://github.com/mathiasbynens/dotfiles/blob/master/.bash_profile
# and https://github.com/webpro/dotfiles/blob/master/runcom/.bash_profile

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles
for file in ~/.{bash_prompt,exports,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null;
done;
