#!/bin/sh

# set -e

source unity.sh

#
# Run Graphics Tests
#

echo "2020 LTS URP Graphics"
$UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-urp -testResults "$PWD/test-results/glTFast-graphics-tests-urp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2020 LTS HDRP Graphics"
$UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-hdrp -testResults "$PWD/test-results/glTFast-graphics-tests-hdrp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2020 LTS BiRP Graphics"
$UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-birp -testResults "$PWD/test-results/glTFast-graphics-tests-birp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2021 LTS URP Graphics"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-urp -testResults "$PWD/test-results/glTFast-graphics-tests-2021-urp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2021 LTS HDRP Graphics"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-hdrp -testResults "$PWD/test-results/glTFast-graphics-tests-2021-hdrp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2021 LTS BiRP Graphics"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-birp -testResults "$PWD/test-results/glTFast-graphics-tests-2021-birp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2021 LTS BiRP Shader Graph Graphics"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-birp-sg -testResults "$PWD/test-results/glTFast-graphics-tests-2021-birp-sg-editor.xml" -testPlatform PlayMode -testCategory "Graphics"
