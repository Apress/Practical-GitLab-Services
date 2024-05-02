#! /bin/bash

MY_RC=0

echo '*** Start unit-test.sh'

if [ "$FAIL_UNIT_TEST" == "true" ]; then
    echo "Unit test failed!"
    MY_RC=1
else
    echo "Unit test succeeded!"
fi

echo '*** End unit-test.sh'

exit $MY_RC
