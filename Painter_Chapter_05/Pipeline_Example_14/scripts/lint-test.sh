#! /bin/bash

MY_RC=0

echo '*** Start lint-test.sh'

if [ "$FAIL_LINT_TEST" == "true" ]; then
    echo "Lint test failed!"
    MY_RC=1
elif [ "$WARN_LINT_TEST" == "true" ]; then
    echo "Lint test warning!"
    MY_RC=2
else
    echo "Lint test succeeded!"
fi

echo '*** End lint-test.sh'

exit $MY_RC
