# Set
typeset -U PATH path
path=($BREW_HOME/bin $BREW_HOME/sbin \
	$HOME/Library/Python/3.9/bin \
	$HOME/.local/bin \
	$DTZ_DIR/scripts \
	$path)

# Export
export PATH

