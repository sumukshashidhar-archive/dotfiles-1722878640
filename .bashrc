# Add this to your ~/.bashrc file

# Function to get virtualenv info
get_virtualenv() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        echo "($(basename "$VIRTUAL_ENV")) "
    fi
}

# Color schemes - uncomment the set you prefer

# 1. Ocean Theme
# VENV_COLOR="\[\033[38;5;39m\]"  # Deep Sky Blue
# USER_HOST_COLOR="\[\033[38;5;37m\]"  # Light Sea Green
# PATH_COLOR="\[\033[38;5;73m\]"  # Dark Sea Green

# 2. Forest Theme
VENV_COLOR="\[\033[38;5;71m\]"  # Dark Sea Green
USER_HOST_COLOR="\[\033[38;5;107m\]"  # Dark Olive Green
PATH_COLOR="\[\033[38;5;143m\]"  # Dark Khaki

# 3. Sunset Theme
# VENV_COLOR="\[\033[38;5;208m\]"  # Dark Orange
# USER_HOST_COLOR="\[\033[38;5;203m\]"  # Indian Red
# PATH_COLOR="\[\033[38;5;179m\]"  # Light Goldenrod

# 4. Lavender Theme
# VENV_COLOR="\[\033[38;5;147m\]"  # Light Steel Blue
# USER_HOST_COLOR="\[\033[38;5;183m\]"  # Plum
# PATH_COLOR="\[\033[38;5;219m\]"  # Orchid

RESET="\[\033[0m\]"

# Set the prompt
PS1="${VENV_COLOR}\$(get_virtualenv)${USER_HOST_COLOR}\u@\h:${PATH_COLOR}\w${USER_HOST_COLOR}\$ ${RESET}"

# truncate
PROMPT_DIRTRIM=2
