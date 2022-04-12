#!/bin/sh

# set -e

source unity.sh

#
# Run Graphics Tests
#

TEST_PLATFORM=StandaloneOSX

echo "2020 LTS URP Graphics"
$UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2020-urp -testResults "$PWD/test-results/glTFast-graphics-tests-2020-urp.xml" -testPlatform "$TEST_PLATFORM" -testCategory "Graphics"

echo "2020 LTS HDRP Graphics"
$UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2020-hdrp -testResults "$PWD/test-results/glTFast-graphics-tests-2020-hdrp.xml" -testPlatform "$TEST_PLATFORM" -testCategory "Graphics"

echo "2020 LTS BiRP Graphics"
$UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2020-birp -testResults "$PWD/test-results/glTFast-graphics-tests-2020-birp.xml" -testPlatform "$TEST_PLATFORM" -testCategory "Graphics"

echo "2021 LTS URP Graphics"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-urp -testResults "$PWD/test-results/glTFast-graphics-tests-2021-urp.xml" -testPlatform "$TEST_PLATFORM" -testCategory "Graphics"

echo "2021 LTS HDRP Graphics"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-hdrp -testResults "$PWD/test-results/glTFast-graphics-tests-2021-hdrp.xml" -testPlatform "$TEST_PLATFORM" -testCategory "Graphics"

echo "2021 LTS BiRP Graphics"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-birp -testResults "$PWD/test-results/glTFast-graphics-tests-2021-birp.xml" -testPlatform "$TEST_PLATFORM" -testCategory "Graphics"

echo "2021 LTS BiRP Shader Graph Graphics"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-birp-sg -testResults "$PWD/test-results/glTFast-graphics-tests-2021-birp-sg.xml" -testPlatform "$TEST_PLATFORM" -testCategory "Graphics"
