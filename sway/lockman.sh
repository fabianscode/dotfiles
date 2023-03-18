#!/bin/sh

swayidle \
    timeout 20 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &

swaylock \
    --ignore-empty-password \
	--screenshots \
    --daemonize \
    --fade-in 1.0 \
    --indicator \
    --clock \
    --datestr %d/%m/%Y \
    --indicator-caps-lock \
    --bs-hl-color 61afefcc \
    --caps-lock-bs-hl-color 458588cc \
    --caps-lock-key-hl-color d3869bcc \
    --font "TerminessTTF Nerd Font" \
    --font-size 40 \
    --indicator-idle-visible \
    --indicator-radius 100 \
    --indicator-thickness 7 \
    --inside-color 28282866 \
    --inside-clear-color 8ec07c66 \
    --inside-caps-lock-color fe801966 \
    --inside-ver-color 45858866 \
    --inside-wrong-color fb493466 \
    --key-hl-color b8bb26cc \
    --layout-bg-color 28282800 \
    --layout-text-color fbf1c7 \
    --line-color 00000000 \
    --ring-color 61afefcc \
    --ring-clear-color 8ec07ccc \
    --ring-caps-lock-color fe8019cc \
    --ring-ver-color 458588cc \
    --ring-wrong-color fb4934cc \
    --separator-color 00000000 \
    --text-color 61afef \
    --text-clear-color fbf1c7 \
    --text-caps-lock-color fbf1c7 \
    --text-ver-color fbf1c7 \
    --text-wrong-color fbf1c7 \
    --effect-blur 2x8 \
    --effect-vignette 0.5:0.5

kill %%
