#! /bin/bash

MY_RC=0
MY_DIR=$( realpath $( dirname $0 ) )
MY_OUTPUT_DIR=$( realpath $MY_DIR/../output )

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
    echo "Build failed!"
    MY_RC=1
else
    create_html > $MY_OUTPUT_DIR/index.html
    echo "Build succeeded!"
fi

echo '*** End build.sh'

exit $MY_RC
