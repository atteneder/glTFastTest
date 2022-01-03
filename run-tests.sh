#!/bin/sh

# set -e

PWD=$(pwd)

UNITY_2020_EXE=/Applications/Unity/Hub/Editor/2020.3.25f1/Unity.app/Contents/MacOS/Unity
UNITY_2021_EXE=/Applications/Unity/Hub/Editor/2021.2.7f1/Unity.app/Contents/MacOS/Unity

if [ ! -f "$UNITY_2020_EXE" ]; then
    echo "Unity not found at $UNITY_2020_EXE"
    exit -1
fi

if [ ! -f "$UNITY_2021_EXE" ]; then
    echo "Unity not found at $UNITY_2021_EXE"
    exit -1
fi

#
# Run Graphics Tests
#

echo "2020 LTS URP Graphics"
time $UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-urp -testResults "$PWD/test-results/glTFast-graphics-tests-urp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2020 LTS HDRP Graphics"
time $UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-hdrp -testResults "$PWD/test-results/glTFast-graphics-tests-hdrp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2020 LTS BiRP Graphics"
time $UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-birp -testResults "$PWD/test-results/glTFast-graphics-tests-birp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2021 LTS URP Graphics"
time $UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-urp -testResults "$PWD/test-results/glTFast-graphics-tests-2021-urp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2021 LTS HDRP Graphics"
time $UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-hdrp -testResults "$PWD/test-results/glTFast-graphics-tests-2021-hdrp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2021 LTS BiRP Graphics"
time $UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-birp -testResults "$PWD/test-results/glTFast-graphics-tests-2021-birp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"
