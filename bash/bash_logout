# ~/.bash_logout: executed by bash(1) when login shell exits.


if [ -n $SSH_AGENT_PID ]; then
	ssh-agent -k
fi

if [ "$SHLVL" = 1 ]; then
	[ -x /usr/bin/clear ] && /usr/bin/clear
fi

