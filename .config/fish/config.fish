if status is-interactive
# Commands to run in interactive sessions can go here
end

set -U fish_greeting ""

function fish_greeting
    macchina
end

if status is-login
    if test -z "$WAYLAND_DISPLAY" -a (tty) = /dev/tty1
        exec start-kineticwe # Replace with 'sway' or your compositor of choice
    end
end

