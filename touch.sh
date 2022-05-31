#!/bin/sh

set -e

source unity.sh

echo "2019 BiRP"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019 -quit

echo "2019 URP"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019-urp -quit

echo "2019 HDRP"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019-hdrp -quit

echo "2020 BiRP"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-tests-2020 -quit

echo "2020 URP"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-tests-2020-urp -quit

echo "2020 HDRP"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-tests-2020-hdrp -quit

echo "2021 BiRP"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021 -quit

echo "2021 HDRP"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021-hdrp -quit

echo "2021 URP"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021-urp -quit

echo "2022 BiRP"
$UNITY_2022_EXE -batchmode -projectPath ./projects/glTFast-tests-2022 -quit

echo "2022 HDRP"
$UNITY_2022_EXE -batchmode -projectPath ./projects/glTFast-tests-2022-hdrp -quit

echo "2022 URP"
$UNITY_2022_EXE -batchmode -projectPath ./projects/glTFast-tests-2022-urp -quit

echo "DOTS"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-tests-dots -quit

echo "glTFast-tests-min-feature macOS Build"
$UNITY_2019_EXE -batchmode -quit -projectPath ./projects/glTFast-tests-min-feature
