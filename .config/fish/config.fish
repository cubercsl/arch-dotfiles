if status is-login && not string match --quiet -e $TERM 'screen'
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
