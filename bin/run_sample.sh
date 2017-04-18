#!/bin/bash
SCRIPTDIR=`dirname $0`
cd $SCRIPTDIR
PATHDIR=`pwd`
PROJECT_ROOT=$PATHDIR/..
SAMPLEDIR=$PROJECT_ROOT/samples
RUNTIMEDIR=$PROJECT_ROOT/lib/runtime
SDKDIR=$PROJECT_ROOT/lib/sdk

# add the samples, runtime and sdk directory to the perl path
export PERL5LIB=$PERL5LIB:$SAMPLEDIR:$RUNTIMEDIR:$SDKDIR

# run the sample
perl $@
