#!/bin/sh

set -e

source unity.sh

echo "2019 LTS BiRP EditMode"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019 -quit
echo "2019 LTS BiRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019 -quit

echo "2019 LTS URP EditMode"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019-urp -quit
echo "2019 LTS URP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019-urp -quit

echo "2019 LTS HDRP EditMode"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019-hdrp -quit
echo "2019 LTS HDRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019-hdrp -quit

echo "2021 BiRP EditMode"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021 -quit
echo "2021 BiRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021 -quit

echo "2021 HDRP EditMode"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021-hdrp -quit
echo "2021 HDRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021-hdrp -quit

echo "2021 URP EditMode"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021-urp -quit
echo "2021 URP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021-urp -quit

echo "2022 BiRP EditMode"
$UNITY_2022_EXE -batchmode -projectPath ./projects/glTFast-tests-2022 -quit
echo "2022 BiRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2022_EXE -batchmode -projectPath ./projects/glTFast-tests-2022 -quit

echo "2022 HDRP EditMode"
$UNITY_2022_EXE -batchmode -projectPath ./projects/glTFast-tests-2022-hdrp -quit
echo "2022 HDRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2022_EXE -batchmode -projectPath ./projects/glTFast-tests-2022-hdrp -quit

echo "2022 URP EditMode"
$UNITY_2022_EXE -batchmode -projectPath ./projects/glTFast-tests-2022-urp -quit
echo "2022 URP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2022_EXE -batchmode -projectPath ./projects/glTFast-tests-2022-urp -quit

echo "DOTS EditMode"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-tests-dots -quit
echo "DOTS PlayMode $PLAYMODE_PLATFORM"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-tests-dots -quit

echo "glTFast-tests-min-feature macOS Build"
$UNITY_2019_EXE -batchmode -quit -projectPath ./projects/glTFast-tests-min-feature
