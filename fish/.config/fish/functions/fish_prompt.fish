function fish_prompt
    echo ''
    string join '' -- (set_color blue)$PWD (set_color yellow)(fish_vcs_prompt)
    echo (set_color normal)'> '
end
