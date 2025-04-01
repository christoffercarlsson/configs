function fish_prompt
    set -g __fish_git_prompt_showdirtystate true
    set -g __fish_git_prompt_showuntrackedfiles true
    set -g __fish_git_prompt_showstashstate true
    echo ''
    string join '' -- (set_color blue)(prompt_pwd --full-length-dirs=3) (set_color yellow)(fish_git_prompt)
    echo (set_color normal)'> '
end
