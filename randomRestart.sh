#!/bin/bash

# Limit range of numbers from 0-1800 (1800 seconds in a half hour)
RANGE=300

# $RANDOM returns a different random integer at each invocation.
# mod it by RANGE to set "seconds" to a number within the range
# provided above.
seconds=$RANDOM
let "seconds %= $RANGE"

#Sleep up to a half hour
sleep $seconds

#Run a LiveUpdate
/etc/periodic/daily/99.restartFW.sh

exit 0