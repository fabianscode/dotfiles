alpha='ee'
base03='#002b36'
base02='#073642'
base01='#586e75'
base00='#657b83'
base0='#839496'
base1='#93a1a1'
base2='#eee8d5'
base3='#fdf6e3'
yellow='#D79921'
orange='#D65d0E'
red='#CC241D'
magenta='#B16286'
violet='#D3869B'
blue='#458588'
cyan='#83A598'
green='#B8BB26'

i3lock \
    --insidever-color=$base02$alpha \
    --insidewrong-color=$base02$alpha \
    --inside-color=$base02$alpha \
    --ringver-color=$green$alpha \
    --ringwrong-color=$red$alpha \
    --ringver-color=$green$alpha \
    --ringwrong-color=$red$alpha \
    --ring-color=$green$alpha \
    --line-uses-ring \
    --keyhl-color=$orange$alpha \
    --bshl-color=$orange$alpha \
    --separator-color=$base01$alpha \
    --verif-color=$green \
    --wrong-color=$red \
    --layout-color=$green \
    --date-color=$green \
    --time-color=$green \
    --screen 2 \
    --blur 2 \
    --clock \
    --indicator \
    --time-str="%H:%M:%S" \
    --date-str="%a %b %e %Y" \
    --verif-text="Verifying..." \
    --wrong-text="Auth Failed" \
    --noinput="No Input" \
    --lock-text="Locking..." \
    --lockfailed="Failed" \
    --time-font="Helvetica" \
    --date-font="Helvetica" \
    --layout-font="Helvetica" \
    --verif-font="Helvetica" \
    --wrong-font="Helvetica" \
    --radius=100 \
    --ring-width=10 \
    --pass-media-keys \
    --pass-screen-keys \
    --pass-volume-keys \
