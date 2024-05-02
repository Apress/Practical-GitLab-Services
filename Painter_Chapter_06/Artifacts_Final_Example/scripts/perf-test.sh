#! /bin/bash

MY_RC=0

echo '*** Start perf-test.sh'

if [ "$FAIL_PERF_TEST" == "true" ]; then
    echo "Performance test failed!"
    MY_RC=1
else
    echo "Performance test succeeded!"
fi

echo '*** End perf-test.sh'

exit $MY_RC
