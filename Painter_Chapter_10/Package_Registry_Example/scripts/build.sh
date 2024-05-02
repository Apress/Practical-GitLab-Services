#! /bin/bash

MY_RC=0
MY_DIR=$( realpath $( dirname $0 ) )
MY_PARENT_DIR=$( realpath $MY_DIR/.. )
MY_OUTPUT_DIR=$( realpath $MY_PARENT_DIR/output )

[[ -n $CI_PROJECT_DIR ]] || export CI_PROJECT_DIR=$MY_PARENT_DIR

create_html() {
    echo '<!DOCTYPE html>'
    echo '<html>'
    echo '<body>'
    echo '<h1>My GitLab Artifact</h1>'
    echo "<p>Hello $( whoami )!</p>"
    echo "<p>Created on $( date '+%Y-%m-%d %T' ).</p>"
    echo '</body>'
    echo '</html>'
}

echo '*** Start build.sh'

if [ "$FAIL_BUILD" == "true" ]; then
    MY_RC=1
else
    create_html > $MY_OUTPUT_DIR/index.html
    pushd $MY_PARENT_DIR/maven-projects/my-app > /dev/null
    mvn -s $CI_PROJECT_DIR/.m2/settings.xml clean compile || MY_RC=1
    popd > /dev/null
fi

[[ $MY_RC -eq 0 ]] && echo "Build succeeded!" || echo "Build failed!"

echo '*** End build.sh'

exit $MY_RC
#! /bin/bash

MY_RC=0
MY_DIR=$( realpath $( dirname $0 ) )
MY_PARENT_DIR=$( realpath $MY_DIR/.. )
MY_OUTPUT_DIR=$( realpath $MY_PARENT_DIR/output )

[[ -n $CI_PROJECT_DIR ]] || export CI_PROJECT_DIR=$MY_PARENT_DIR

source $MY_DIR/maven-env.sh

create_html() {
    echo '<!DOCTYPE html>'
    echo '<html>'
    echo '<body>'
    echo '<h1>My GitLab Artifact</h1>'
    echo "<p>Hello $( whoami )!</p>"
    echo "<p>Created on $( date '+%Y-%m-%d %T' ).</p>"
    echo '</body>'
    echo '</html>'
}

echo '*** Start build.sh'

if [ "$FAIL_BUILD" == "true" ]; then
    MY_RC=1
else
    create_html > $MY_OUTPUT_DIR/index.html
    pushd $MY_PARENT_DIR/maven-projects/my-app > /dev/null
    mvn -s $CI_PROJECT_DIR/.m2/settings.xml clean compile || MY_RC=1
    popd > /dev/null
fi

[[ $MY_RC -eq 0 ]] && echo "Build succeeded!" || echo "Build failed!"

echo '*** End build.sh'

exit $MY_RC
