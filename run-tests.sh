#!/bin/sh

set -e

source unity.sh

#
# Run Unit Tests
#

PLAYMODE_PLATFORM=StandaloneOSX
export GLTF_TEST_ASSET_DIR=$(pwd)/assets

# PROJECT="./projects/glTFast-tests-2019"
# echo "2019 LTS BiRP EditMode"
# UnifiedTestRunner --suite=editor  --testproject="$PROJECT" --editor-location="$UNITY_2019"
# echo "2019 LTS BiRP PlayMode $PLAYMODE_PLATFORM"
# UnifiedTestRunner --suite=playmode --testlist="testlist.txt" --testproject="$PROJECT" --editor-location="$UNITY_2019" --platform="$PLAYMODE_PLATFORM" --a="$PWD/test-results/glTFast-tests-2019-runtime"

echo "2019 LTS BiRP EditMode"
$UNITY_2019_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2019 -testResults "$PWD/test-results/glTFast-tests-2019-birp-editor.xml" -testPlatform EditMode
echo "2019 LTS BiRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2019_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2019 -testResults "$PWD/test-results/glTFast-tests-2019-birp-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance"

echo "2019 LTS URP EditMode"
$UNITY_2019_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2019-urp -testResults "$PWD/test-results/glTFast-tests-2019-urp-editor.xml" -testPlatform EditMode
echo "2019 LTS URP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2019_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2019-urp -testResults "$PWD/test-results/glTFast-tests-2019-urp-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance"

echo "2019 LTS HDRP EditMode"
$UNITY_2019_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2019-hdrp -testResults "$PWD/test-results/glTFast-tests-2019-hdrp-editor.xml" -testPlatform EditMode
echo "2019 LTS HDRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2019_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2019-hdrp -testResults "$PWD/test-results/glTFast-tests-2019-hdrp-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance"

echo "2021 BiRP EditMode"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2021 -testResults "$PWD/test-results/glTFast-tests-2021-birp-editor.xml" -testPlatform EditMode
echo "2021 BiRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2021 -testResults "$PWD/test-results/glTFast-tests-2021-birp-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance"

echo "2021 HDRP EditMode"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2021-hdrp -testResults "$PWD/test-results/glTFast-tests-2021-hdrp-editor.xml" -testPlatform EditMode
echo "2021 HDRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2021-hdrp -testResults "$PWD/test-results/glTFast-tests-2021-hdrp-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance"

echo "2021 URP EditMode"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2021-urp -testResults "$PWD/test-results/glTFast-tests-2021-urp-editor.xml" -testPlatform EditMode
echo "2021 URP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2021_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2021-urp -testResults "$PWD/test-results/glTFast-tests-2021-urp-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance"

echo "2022 BiRP EditMode"
$UNITY_2022_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2022 -testResults "$PWD/test-results/glTFast-tests-2022-birp-editor.xml" -testPlatform EditMode
echo "2022 BiRP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2022_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2022 -testResults "$PWD/test-results/glTFast-tests-2022-birp-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance"

echo "2022 HDRP EditMode"
$UNITY_2022_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2022-hdrp -testResults "$PWD/test-results/glTFast-tests-2022-hdrp-editor.xml" -testPlatform EditMode
# echo "2022 HDRP PlayMode $PLAYMODE_PLATFORM"
# $UNITY_2022_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2022-hdrp -testResults "$PWD/test-results/glTFast-tests-2022-hdrp-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance"

echo "2022 URP EditMode"
$UNITY_2022_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2022-urp -testResults "$PWD/test-results/glTFast-tests-2022-urp-editor.xml" -testPlatform EditMode
echo "2022 URP PlayMode $PLAYMODE_PLATFORM"
$UNITY_2022_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-2022-urp -testResults "$PWD/test-results/glTFast-tests-2022-urp-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance"

echo "DOTS EditMode"
$UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-dots -testResults "$PWD/test-results/glTFast-tests-dots-editor.xml" -testPlatform EditMode
echo "DOTS PlayMode $PLAYMODE_PLATFORM"
$UNITY_2020_EXE -runTests -batchmode -projectPath ./projects/glTFast-tests-dots -testResults "$PWD/test-results/glTFast-tests-dots-runtime.xml" -testPlatform "$PLAYMODE_PLATFORM" -testCategory "!Performance;!Export"

#
# Code Coverage
#

echo "Code Coverage EditMode"
$UNITY_2021_EXE \
-projectPath ./projects/glTFast-tests-2021 \
-batchmode \
-debugCodeOptimization \
-burst-disable-compilation \
-enableCodeCoverage \
-testPlatform EditMode \
-testResults "$PWD/test-results/glTFast-tests-code-coverage-editmode.xml" \
-coverageResultsPath "$PWD/test-results/CodeCoverage" \
-coverageHistoryPath "$PWD/test-results/CodeCoverage" \
-coverageOptions "generateAdditionalMetrics;assemblyFilters:+glTFast,+glTFast.*,+glTFastSchema,+glTFastFakeSchema,+glTFastEditor" \
-testCategory "!Performance" \
-runTests

echo "Code Coverage PlayMode"
$UNITY_2021_EXE \
-projectPath ./projects/glTFast-tests-2021 \
-batchmode \
-debugCodeOptimization \
-burst-disable-compilation \
-enableCodeCoverage \
-testPlatform PlayMode \
-testResults "$PWD/test-results/glTFast-tests-code-coverage-playmode.xml" \
-coverageResultsPath "$PWD/test-results/CodeCoverage" \
-coverageHistoryPath "$PWD/test-results/CodeCoverage" \
-coverageOptions "generateAdditionalMetrics;assemblyFilters:+glTFast,+glTFast.*,+glTFastSchema,+glTFastFakeSchema,+glTFastEditor" \
-testCategory "!Performance" \
-runTests

echo "Code Coverage HTML Report"
$UNITY_2021_EXE \
-projectPath ./projects/glTFast-tests-2021 \
-batchmode \
-debugCodeOptimization \
-burst-disable-compilation \
-enableCodeCoverage \
-testPlatform PlayMode \
-testResults "$PWD/test-results/glTFast-tests-coverage.xml" \
-coverageResultsPath "$PWD/test-results/CodeCoverage" \
-coverageHistoryPath "$PWD/test-results/CodeCoverage" \
-coverageOptions "generateHtmlReport;generateHtmlReportHistory;generateBadgeReport;assemblyFilters:+glTFast,+glTFast.*,+glTFastSchema,+glTFastFakeSchema,+glTFastEditor" \
-testCategory "!Performance" \
-runTests

cp "test-results/CodeCoverage/Report/badge_linecoverage.svg" "packages/glTFast/Documentation~/Images/badge_linecoverage.svg"

#
# Create builds
#

echo "glTFast-tests-min-feature macOS Build"
$UNITY_2019_EXE -batchmode -quit -projectPath ./projects/glTFast-tests-min-feature -buildOSXUniversalPlayer "$PWD/builds/macOS.app"
