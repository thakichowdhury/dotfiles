# FZF
fd --type f | fzf                                   # Feed the output of fd into fzf
export FZF_DEFAULT_COMMAND='fd --type f'            # Setting fd as the default source for fzf
fzf                                                 # Now fzf (w/o pipe) will use fd instead of find
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"    # To apply the command to CTRL-T as well
