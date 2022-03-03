// Copyright 2020-2022 Andreas Atteneder
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

using GLTFTest.Sample;
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEditor.VersionControl;
using UnityEngine;

public class TestAssetBundler : IPreprocessBuildWithReport {
    
    public int callbackOrder => 0;

    public void OnPreprocessBuild(BuildReport target) {
        SyncAssets();
    }

    [MenuItem("Tools/Sync glTF Test Assets")]
    public static void SyncAssetsMenu() {
        SyncAssets();
    }

    static void SyncAssets() {
        var sampleSetNames = new[] {
            "glTF-Sample-Models",
            "glTF-Sample-Models-glb",
            "glTF-Sample-Models-gltf",
        };

        foreach (var setName in sampleSetNames) {
            var sampleSet = AssetDatabase.LoadAssetAtPath<SampleSet>( $"Packages/com.atteneder.gltf-tests/Runtime/SampleSets/{setName}.asset");
            sampleSet.CreateJSON();
            sampleSet.CopyToStreamingAssets();
        }
        AssetDatabase.Refresh();
    }
}
