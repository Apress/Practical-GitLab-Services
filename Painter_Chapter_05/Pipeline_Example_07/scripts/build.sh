#! /bin/bash

MY_RC=0

echo '*** Start build.sh'

if [ "$FAIL_BUILD" == "true" ]; then
    echo "Build failed!"
    MY_RC=1
else
    echo "Build succeeded!"
fi

echo '*** End build.sh'

exit $MY_RC
