set -g fish_key_bindings fish_vi_key_bindings

set -U fish_greeting

source ~/.config/fish/alias.fish
source ~/.config/fish/env.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# yazi
function yy
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

starship init fish | source

# test -f /home/xlings/.xlings_data/xlings-profile.fish; and source /home/xlings/.xlings_data/xlings-profile.fish
