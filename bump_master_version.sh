#!/bin/bash

# This script needs to be edited to bump old develop version to new master version for new release.
# - run this script in develop branch 
# - after running this script merge develop into master
# - after running this script and merging develop into master, run bump_develop_version.sh in master and
#   merge master into develop

OLD_ROCBLAS_VERSION="15.3.4"
NEW_ROCBLAS_VERSION="14.3.5"

OLD_TENSILE_VERSION="tensile_tag \"develop-rocm20\""
NEW_TENSILE_VERSION="tensile_tag b0e0ce85f8b77ce384296850f85715c39d123108"

OLD_MINIMUM_REQUIRED_VERSION="MinimumRequiredVersion: 4.6.0"
NEW_MINIMUM_REQUIRED_VERSION="MinimumRequiredVersion: 4.6.0"

sed -i "s/${OLD_ROCBLAS_VERSION}/${NEW_ROCBLAS_VERSION}/g" CMakeLists.txt
sed -i "s/${OLD_TENSILE_VERSION}/${NEW_TENSILE_VERSION}/g" CMakeLists.txt

#only update yaml files for a Tensile major version change
#for FILE in library/src/blas3/Tensile/Logic/*/*yaml
#do
#  sed -i "s/${OLD_MINIMUM_REQUIRED_VERSION}/${NEW_MINIMUM_REQUIRED_VERSION}/" $FILE
#done
