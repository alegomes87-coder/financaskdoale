#!/bin/sh
#
# Gradle startup script for UN*X
#
APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`
APP_HOME=`pwd`

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

org_gradle_jvm_opts=""
MAX_FD="maximum"

warn () {
    echo "$*"
}

die () {
    echo
    echo "$*"
    echo
    exit 1
}

# OS specific support
cygwin=false
msys=false
darwin=false
case "`uname`" in
  CYGWIN* )
    cygwin=true
    ;;
  Darwin* )
    darwin=true
    ;;
  MINGW* )
    msys=true
    ;;
esac

if [ "$1" = "" ]; then
    die "ERROR: No task specified."
fi

exec java $org_gradle_jvm_opts \
  -classpath "$CLASSPATH" \
  org.gradle.wrapper.GradleWrapperMain \
  "$@"
