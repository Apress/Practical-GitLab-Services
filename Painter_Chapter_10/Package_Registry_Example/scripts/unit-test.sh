#! /bin/bash

MY_RC=0
MY_DIR=$( realpath $( dirname $0 ) )
MY_PARENT_DIR=$( realpath $MY_DIR/.. )

[[ -n $CI_PROJECT_DIR ]] || export CI_PROJECT_DIR=$MY_PARENT_DIR

source $MY_DIR/maven-env.sh

echo '*** Start unit-test.sh'

if [ "$FAIL_UNIT_TEST" == "true" ]; then
    echo "Unit test failed!"
    MY_RC=1
else
    pushd $MY_PARENT_DIR/maven-projects/my-app > /dev/null
    mvn -s $CI_PROJECT_DIR/.m2/settings.xml test || MY_RC=1
    popd > /dev/null
    echo "Unit test succeeded!"
fi

echo '*** End unit-test.sh'

exit $MY_RC
