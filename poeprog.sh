#!/bin/bash
#
# script to run the canto site this script is in
#

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
COMMAND="$1"
shift

if [[ $COMMAND == "refresh" ]]; then
    pushd "${DIR}"
    git pull
    popd
    COMMAND="restart"
fi

echo command is $COMMAND

if [[ $COMMAND == "start" || $COMMAND == "stop" || $COMMAND == "status" || $COMMAND == "run"  || $COMMAND == "restart" ]]; then
    source ${DIR}/bin/cantoserver.sh $COMMAND "$@" --site poetic_programming
else
    echo
    echo "Usage: ${0##*/} {start|stop|run|restart|refresh|status}"
    echo
    exit 1
fi
