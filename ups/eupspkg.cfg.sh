# EupsPkg config file. Sourced by 'eupspkg'

prep()
{
	default_prep

        # Disable "Makefile" to use "setup.py" instead
	# (eups check first for existing "Makefile" and then for "setup.py")
        FLASK_MAKEFILE=Makefile
        [ -f ${FLASK_MAKEFILE} ] && mv ${FLASK_MAKEFILE} ${FLASK_MAKEFILE}.eups-removed
}

