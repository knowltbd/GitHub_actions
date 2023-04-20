#!/bin/sh -l

# output strings that the runner will identify for particular logging levels
echo "::debug:: Debug message"
echo "::warning:: Warning message"
echo "::error:: Error message"

# hide a secret value
echo "::add-mask::$1"
echo "Hello $1"

# create and output from the process
time=$(date)
# depricated: echo "::set-output name=time::$time"
echo "time=$time" >> $GITHUB_OUTPUT


# create a grouped logging
echo "::group::Some expandable logs"
echo "some logging"
echo "some more logging"
echo "::endgroup::"

# sent an environmental value
# depricated: echo "::set-env name=HELLO::hello"
