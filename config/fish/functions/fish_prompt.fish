function fish_prompt
    set_color purple
    date "+%m/%d/%y"
    set_color F00
    echo (pwd) '>' (set_color normal)
end