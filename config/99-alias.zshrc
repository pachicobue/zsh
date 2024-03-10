# Command
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -p'
alias ls='ls --group-directories-first --color=auto -F'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# Restart
alias resource="source ${ZDOTDIR}/.zshrc"
alias reload='exec -l $SHELL'

# Editor
alias e='emacsclient'

# Online Judge
export ALGOLIB_PATH=${HOME}/programming/oj-environment/algolib
export ACL_PATH=${HOME}/programming/oj-environment/ac-library
export CXX_COMPILER=g++
export CXX_COMMON_OPTIONS="-std=gnu++20 -Wall -Wextra -I${ALGOLIB_PATH}/src -I${ACL_PATH}"
export CXX_DEBUG_OPTIONS='-O0 -g3 -fsanitize=undefined,address -DHOGAPACHI'
export CXX_RELEASE_OPTIONS='-O2 -DHOGEPACHI'
function dg++() {
    source_name=${1}
    binary_name=${1%.cpp}.exe
    ${CXX_COMPILER} ${CXX_COMMON_OPTIONS} ${CXX_DEBUG_OPTIONS} ${source_name} -o ${binary_name}
}
function fg++() {
    source_name=${1}
    binary_name=${1%.cpp}.exe
    ${CXX_COMPILER} ${CXX_COMMON_OPTIONS} ${CXX_RELEASE_OPTIONS} ${source_name} -o ${binary_name}
}
function dgch() {
    source_name=${1}
    binary_name=${1}.dg++.gch
    ${CXX_COMPILER} ${CXX_COMMON_OPTIONS} ${CXX_DEBUG_OPTIONS} ${source_name} -o ${binary_name}
}
function fgch() {
    source_name=${1}
    binary_name=${1}.fg++.gch
    ${CXX_COMPILER} ${CXX_COMMON_OPTIONS} ${CXX_RELEASE_OPTIONS} ${source_name} -o ${binary_name}
}

