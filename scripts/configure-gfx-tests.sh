#!/bin/sh

set -e

pwd=$(cd -P -- "$(dirname -- "$0")" && printf '%s\n' "$(pwd -P)")
source "$pwd/unity.sh"

echo "graphics-tests-2021-birp"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-birp -executeMethod "GLTFTest.Graphics.Editor.GenerateGraphicsTests.GenerateTests" -quit
echo "graphics-tests-2021-birp-sg"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-birp-sg -executeMethod "GLTFTest.Graphics.Editor.GenerateGraphicsTests.GenerateTests" -quit
echo "graphics-tests-2021-hdrp"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-hdrp -executeMethod "GLTFTest.Graphics.Editor.GenerateGraphicsTests.GenerateTests" -quit
echo "graphics-tests-2021-urp"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-graphics-tests-2021-urp -executeMethod "GLTFTest.Graphics.Editor.GenerateGraphicsTests.GenerateTests" -quit
echo "graphics-tests-birp"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-graphics-tests-birp -executeMethod "GLTFTest.Graphics.Editor.GenerateGraphicsTests.GenerateTests" -quit
echo "graphics-tests-hdrp"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-graphics-tests-hdrp -executeMethod "GLTFTest.Graphics.Editor.GenerateGraphicsTests.GenerateTests" -quit
echo "graphics-tests-urp"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-graphics-tests-urp -executeMethod "GLTFTest.Graphics.Editor.GenerateGraphicsTests.GenerateTests" -quit
