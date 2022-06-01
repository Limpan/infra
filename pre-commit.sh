#!/bin/bash
#
# Called by "git commit" with no arguments.  The hook should
# exit with non-zero status after issuing an appropriate message if
# it wants to stop the commit.

# Unset variables produce errors
set -u

# Redirect output to stderr.
exec 1>&2

EXIT_STATUS=0

# Check that all changed *.vault files are encrypted
while IFS=$'\n': read -r file; do
    [[ "$file" != *vault* ]] && continue

    if !(head -1 "$file" | grep --quiet '^\$ANSIBLE_VAULT;') ;then
        echo "ERROR: Vault file ($file) not encrypted."
        EXIT_STATUS=1
    fi
done < <(git diff --cached --name-only)

exit $EXIT_STATUS
