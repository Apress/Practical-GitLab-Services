#! /bin/bash

MY_RC=0
MY_DIR=$( realpath $( dirname $0 ) )
MY_PARENT_DIR=$( realpath $MY_DIR/.. )

[[ -n $CI_PROJECT_DIR ]] || export CI_PROJECT_DIR=$MY_PARENT_DIR

source $MY_DIR/maven-env.sh

echo '*** Start deploy.sh'

if [ "$FAIL_DEPLOY" == "true" ]; then
    echo "Deploy failed!"
    MY_RC=1
else
    pushd $MY_PARENT_DIR/maven-projects/my-app > /dev/null
    mvn -s $CI_PROJECT_DIR/.m2/settings.xml -Dmaven.test.skip deploy || MY_RC=1
    popd > /dev/null
    echo "Deploy succeeded!"
fi

echo '*** End deploy.sh'

exit $MY_RC
