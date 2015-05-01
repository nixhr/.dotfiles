override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"
  GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ ${Cyan}\u${Yellow}@${Red}\h ${Yellow}${PathShort}${ResetColor}"
}
reload_git_prompt_colors "Custom"
