#!/usr/bin/env bash

SCM_THEME_PROMPT_PREFIX="${cyan}(${green}"
SCM_THEME_PROMPT_SUFFIX="${cyan})"
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${green}✓"

prompt() {
  #PS1="\[\e[0;33m\]\u\[\e[0m\]🍎\[\033[0;32m\][\@]\033[0m\]$(k8s_context_prompt)$(k8s_namespace_prompt) $(scm_prompt_info)${reset_color} ${cyan}\W${reset_color} 
#${green}❯${yellow}❯${red}❯${reset_color} "
  PS1="\[\e[0;33m\]\u\[\e[0m\]🍎\[\033[0;32m\][\@]\033[0m\] $(scm_prompt_info)${reset_color} ${cyan}\W${reset_color} 
${green}❯${yellow}❯${red}❯${reset_color} "
}

safe_append_prompt_command prompt
