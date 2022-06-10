#!/bin/sh

set -e

source unity.sh

#
# Run Performance Tests
#

export GLTF_TEST_ASSET_DIR=$(pwd)/assets

# echo "2019 LTS BiRP PlayMode $PLAYMODE_PLATFORM"
# $UNITY_2019_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2019 -testResults "$PWD/test-results/glTFast-tests-2019-birp-performance.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "Performance"

echo "2021 LTS BiRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2021 -testResults "$PWD/test-results/glTFast-tests-2021-birp-performance.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "Performance"
