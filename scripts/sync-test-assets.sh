#!/bin/sh

set -e

pwd=$(cd -P -- "$(dirname -- "$0")" && printf '%s\n' "$(pwd -P)")
source "$pwd/unity.sh"

#
# Run Unit Tests
#

echo "2019 LTS BiRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019.4 -executeMethod TestAssetBundler.SyncAssets -quit

echo "2019 LTS URP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019.4-urp -executeMethod TestAssetBundler.SyncAssets -quit

echo "2019 LTS HDRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2019_EXE -batchmode -projectPath ./projects/glTFast-tests-2019.4-hdrp -executeMethod TestAssetBundler.SyncAssets -quit


echo "2020.3 URP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-tests-2020.3-urp -executeMethod TestAssetBundler.SyncAssets -quit

echo "2020.3 HDRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-tests-2020.3-hdrp -executeMethod TestAssetBundler.SyncAssets -quit


echo "2021.2 BiRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021.2 -executeMethod TestAssetBundler.SyncAssets -quit

echo "2021.2 HDRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021.2-hdrp -executeMethod TestAssetBundler.SyncAssets -quit

echo "2021.2 URP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -batchmode -projectPath ./projects/glTFast-tests-2021.2-urp -executeMethod TestAssetBundler.SyncAssets -quit

echo "DOTS PlayMode $PLAYMODE_PLATFORM"
$UNITY_2020_EXE -batchmode -projectPath ./projects/glTFast-tests-dots -executeMethod TestAssetBundler.SyncAssets -quit
