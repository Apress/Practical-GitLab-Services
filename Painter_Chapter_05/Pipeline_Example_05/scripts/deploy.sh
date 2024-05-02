#! /bin/bash

MY_RC=0

echo '*** Start deploy.sh'

if [ "$FAIL_DEPLOY" == "true" ]; then
    echo "Deploy failed!"
    MY_RC=1
else
    echo "Deploy succeeded!"
fi

echo '*** End deploy.sh'

exit $MY_RC
