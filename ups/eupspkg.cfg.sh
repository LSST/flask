# EupsPkg config file. Sourced by 'eupspkg'

prep()
{
	default_prep

        # Disable "Makefile" to use "setup.py" instead
	# (eups check first for existing "Makefile" and then for "setup.py")
        FLASK_MAKEFILE="Makefile"
        [ -f ${FLASK_MAKEFILE} ] && mv ${FLASK_MAKEFILE} ${FLASK_MAKEFILE}.eups-removed

        # Remove forgotten .git repository contained in Flask archive
        # which might break eups
        FORGOTTEN_GIT_DIR="docs/_themes/.git"
        [ -e ${FORGOTTEN_GIT_DIR} ] && rm -r ${FORGOTTEN_GIT_DIR}
}

