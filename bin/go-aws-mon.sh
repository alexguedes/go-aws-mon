#!/bin/bash -
RELATIVE_PATH=`dirname "${BASH_SOURCE[0]}"`
cd ${RELATIVE_PATH}
ABS_PATH=`pwd`
cd -

if [ ! -x ${ABS_PATH}/go-aws-mon ]; then
    wget -O ${ABS_PATH}/go-aws-mon https://github.com/alexguedes/go-aws-mon/raw/master/bin/go-aws-mon
    chmod +x ${ABS_PATH}/go-aws-mon
fi

# Please change below lines according to your environment and requirement
# #######################################################################
${ABS_PATH}/go-aws-mon --mem-used --mem-avail --disk-space-used --disk-space-avail --disk-inode-util
# #######################################################################

