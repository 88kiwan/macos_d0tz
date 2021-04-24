# Set
typeset -U PATH path
path=($BREW_HOME/bin $BREW_HOME/sbin \
	$HOME/.local/bin \
	$DTZ_DIR/scripts \
	$N_PREFIX/bin \
	$path)

# Export
export PATH

