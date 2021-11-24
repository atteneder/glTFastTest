#!/bin/sh

# set -e

PWD=$(pwd)

UNITY_2020_EXE=/Applications/Unity/Hub/Editor/2020.3.23f1/Unity.app/Contents/MacOS/Unity

if [ ! -f "$UNITY_2020_EXE" ]; then
    echo "Unity not found at $UNITY_2020_EXE"
    exit -1
fi

#
# Run Graphics Tests
#

echo "2020 LTS URP EditMode"
time $UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-urp -testResults "$PWD/test-results/glTFast-graphics-tests-urp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2020 LTS HDRP EditMode"
time $UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-hdrp -testResults "$PWD/test-results/glTFast-graphics-tests-hdrp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

echo "2020 LTS BiRP EditMode"
time $UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-graphics-tests-birp -testResults "$PWD/test-results/glTFast-graphics-tests-birp-editor.xml" -testPlatform PlayMode -testCategory "Graphics"

